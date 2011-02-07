<?php
require __DIR__ . '/../src/autoload.php';

// Set some super-global variables for demo purposes.
if (PHP_SAPI == 'cli') {
    $_SERVER['REQUEST_URI'] = '/bankaccount/id/1';
}

$request  = new Request($_SERVER, $_GET, $_POST, $_COOKIE, $_FILES, $_ENV);
$response = new Response;

$frontController = new FrontController($request, $response);

$mapperFactory = new MapperFactory(
  new PDO('sqlite:' . dirname(__DIR__) . '/database/bankaccount.db')
);

$controllerFactory = new ControllerFactory($mapperFactory);

$router = new Router($controllerFactory);
$router->set('bankaccount',  'BankAccountController');
$router->set('bankaccounts', 'BankAccountListController');

$view = $frontController->dispatch($router);
print $view->render();
