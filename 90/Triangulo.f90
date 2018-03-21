PROGRAM Triangulo
IMPLICIT NONE
REAL :: a, b, c, Area
PRINT *, 'Entre com os valores de comprimento&
 &dos 3 lados do triângulo.'
READ *, a, b, c
PRINT *, 'Area do triângulo: ', Area(a,b,c)
CONTAINS
FUNCTION Area(x,y,z)
REAL :: Area ! Tipo da função
REAL, INTENT( IN ) :: x, y, z
REAL :: theta, height
theta = acos((x**2+y**2-z**2)/(2.0*x*y))
height = x*sin(theta); Area = 0.5*y*height
END FUNCTION Area
END PROGRAM Triangulo
