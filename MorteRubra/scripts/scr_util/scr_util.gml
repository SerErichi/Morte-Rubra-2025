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

//funçao com o proposito de alterar a dimensão do sprite (sujeita a fuder a qualidade, cautela na dimensao)
//parametro é um Vetor2D
function updateImageScale (_desiredDimensions)
{
	// new scale is a function that predicts the certatint image_scale correspondent to a certain dimension
	var _newXscale = _desiredDimensions.x/self.sprite_width;
	var _newYscale = _desiredDimensions.y/self.sprite_height;
	self.image_xscale *= _newXscale; 
	self.image_yscale *= _newYscale; 
}; 