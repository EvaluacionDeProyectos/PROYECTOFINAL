<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/ins1', 'userController@index');
Route::get('/ins2', 'userController@index');
Route::get('/ins3', 'userController@index');
Route::get('/instructoresAprendiz', 'userController@instructores');

//----------------------------------------------------------------------------------------------------------------------//
//ruta que nos llevara al home si escribimos /home en el navegador
Route::get('/', 'HomeController@index');
Route::get('/home', 'HomeController@index');

Route::get('/coordinador', 'coordinadorController@index');
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('regional','regionalController');

Route::get('regional/destroy/{id}', ['as' => 'regional/destroy', 'uses'=>'regionalController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('regional/search', ['as' => 'regional/search', 'uses'=>'regionalController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('centro','centroController');

Route::get('centro/destroy/{id}', ['as' => 'centro/destroy', 'uses'=>'centroController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('centro/search', ['as' => 'centro/search', 'uses'=>'centroController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('coordinacion','coordinacionController');

Route::get('coordinacion/destroy/{id}', ['as' => 'coordinacion/destroy', 'uses'=>'coordinacionController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('coordinacion/search', ['as' => 'coordinacion/search', 'uses'=>'coordinacionController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('coordinacion','coordinacionController');

Route::get('coordinacion/destroy/{id}', ['as' => 'coordinacion/destroy', 'uses'=>'coordinacionController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('coordinacion/search', ['as' => 'coordinacion/search', 'uses'=>'coordinacionController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('programa','programaController');

Route::get('programa/destroy/{id}', ['as' => 'programa/destroy', 'uses'=>'programaController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('programa/search', ['as' => 'programa/search', 'uses'=>'programaController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('ficha','fichaController');

Route::get('ficha/destroy/{id}', ['as' => 'ficha/destroy', 'uses'=>'fichaController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('ficha/search', ['as' => 'ficha/search', 'uses'=>'fichaController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('instructor','instructorController');

Route::get('instructor/destroy/{id}', ['as' => 'instructor/destroy', 'uses'=>'instructorController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('instructor/search', ['as' => 'instructor/search', 'uses'=>'instructorController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('aprendiz','aprendizController');

Route::get('aprendiz/destroy/{id}', ['as' => 'aprendiz/destroy', 'uses'=>'aprendizController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('aprendiz/search', ['as' => 'aprendiz/search', 'uses'=>'aprendizController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('cuestionario','cuestionarioController');

Route::get('cuestionario/destroy/{id}', ['as' => 'cuestionario/destroy', 'uses'=>'cuestionarioController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('cuestionario/search', ['as' => 'cuestionario/search', 'uses'=>'cuestionarioController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('dcuestionario','dcuestionarioController');

Route::get('dcuestionario/destroy/{id}', ['as' => 'dcuestionario/destroy', 'uses'=>'dcuestionarioController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('dcuestionario/search', ['as' => 'dcuestionario/search', 'uses'=>'dcuestionarioController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('dficha','dfichaController');

Route::get('dficha/destroy/{id}', ['as' => 'dficha/destroy', 'uses'=>'dfichaController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('dficha/search', ['as' => 'dficha/search', 'uses'=>'dfichaController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('instructorescoordinacion','instructorescoordinacionController');

Route::get('instructorescoordinacion/destroy/{id}', ['as' => 'instructorescoordinacion/destroy', 'uses'=>'instructorescoordinacionController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('instructorescoordinacions/search', ['as' => 'instructorescoordinacion/search', 'uses'=>'instructorescoordinacionController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('coordinador','coordinadorController');

Route::get('coordinador/destroy/{id}', ['as' => 'coordinador/destroy', 'uses'=>'coordinadorController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('coordinador/search', ['as' => 'coordinador/search', 'uses'=>'coordinadorController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('pregunta','preguntaController');

Route::get('pregunta/destroy/{id}', ['as' => 'pregunta/destroy', 'uses'=>'preguntaController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('pregunta/search', ['as' => 'pregunta/search', 'uses'=>'preguntaController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::resource('detalle_pregunta','detalle_preguntaController');

Route::get('detalle_pregunta/destroy/{id}', ['as' => 'detalle_pregunta/destroy', 'uses'=>'detalle_preguntaController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('detalle_pregunta/search', ['as' => 'detalle_pregunta/search', 'uses'=>'detalle_preguntaController@search']);
//----------------------------------------------------------------------------------------------------------------------//
Route::get('principalAprendiz', 'principalAprendiz@index');

//----------------------------------------------------------------------------------------------------------------------//
Route::resource('respuesta','respuestaController');

Route::get('respuesta/destroy/{id}', ['as' => 'respuesta/destroy', 'uses'=>'respuestaController@destroy']);
//ruta para realizar busqueda de registros.
Route::post('respuesta/search', ['as' => 'respuesta/search', 'uses'=>'respuestaController@search']);

//----------------------------------------------------------------------------------------------------------------------//

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
