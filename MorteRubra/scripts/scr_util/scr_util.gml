///Metodo que retorna o semelhante a uma classe/struct
//variaveis definidas dentro do escopo se tornam atributos
function Vector2D(_x = 0, _y = 0) constructor{
	x = _x;
	y = _y;
	
	add = function(_x, _y){
		x += _x;
		y += _y;
	};
	
	change = function(_x, _y){
		x = _x;
		y = _y;
	};
	
	///Se true, cria um vetor apartir da referencia normalizada, 
	//false altera a referencia (false é associado se nenhum valor for passado)
	normalize = function (_createNew = false){
		var len = sqrt(power(x,2) + power(y,2));
		if (len != 0) {
		    x /= len;
		    y /= len;
		}	
	}
}