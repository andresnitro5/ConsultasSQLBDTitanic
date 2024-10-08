--Cuantas personas tienen 54 años
SELECT * FROM titanic WHERE Age = '54';

--Select para seleccionar datos de la base de datos
SELECT * FROM titanic;

--Filtrar resultados con WHERE
SELECT * FROM titanic WHERE Age = '28';

--Ordenar resultados con ORDER BY
SELECT * FROM titanic ORDER BY Age ASC; --Ordena de manera ascendente con ASC

--Contar filas con count
SELECT count (*) FROM titanic WHERE Age = '28';

--Listar los nombres y edades de todos los pasajeros
SELECT Name, Age FROM titanic;

-- DESC para ordenar de manera descendente.
SELECT * FROM titanic ORDER BY Age DESC;

--Contar el numero de supervivientes
SELECT count (*) FROM titanic WHERE Survived = '1';

--Listar a los pasajeros por clase
SELECT Pclass, count (*) as Num_Pasajeros FROM titanic GROUP BY Pclass;

--Buscar a pasajeros que abordaron un puerto especifico
SELECT * FROM titanic WHERE Embarked = 'C';

--Listar a los pasajeros con edad menor a 18 años.
SELECT * FROM titanic WHERE Age <= '18';

--Contar el numero de sobrevivientes mujeres 
SELECT count(*) as Num_Pasajeras_Supervivientes
FROM titanic
WHERE Sex = 'female' AND Survived = '1';

--Contar el numero de sobrevivientes hombres
SELECT count (*) as Num_Pasajeros_Sobrevivientes
FROM titanic 
WHERE Sex = 'male' AND Survived = '1';

--Listar los pasajeros sobrevivientes menores de edad ordenados de manera ascendente
SELECT * FROM titanic 
WHERE Survived = '1' AND Age <= '18'
ORDER BY Age ASC;

--Contar cuantos pasajeros subieron en cada puerto
SELECT Embarked, count (*) AS Num_Pasajeros_Por_Puerto
FROM titanic
GROUP BY Embarked;

--Encontrar la edad promedio de los pasajeros en cada clase (Pclass)
SELECT Pclass, AVG(Age) AS AverageAge
FROM titanic
GROUP BY Pclass;

--Listar los pasajeros que viajaron en la primera clase (Pclass = 1) y que tienen un precio de boleto (Fare) mayor a 100
SELECT PassengerId, Name, Fare
FROM titanic
WHERE Pclass = 1 AND Fare > 100;

--Contar el número de pasajeros que sobrevivieron y el número que no sobrevivieron
SELECT Survived, COUNT(*) AS Count
FROM titanic
GROUP BY Survived;

--Encontrar la edad promedio de los pasajeros que sobrevivieron (Survived = 1) y los que no sobrevivieron (Survived = 0)
SELECT Survived, AVG(Age) AS AverageAge
FROM titanic
GROUP BY Survived;

--Listar el nombre, clase (Pclass), y precio del boleto (Fare) de los 5 pasajeros que pagaron más por su boleto
SELECT Name, Pclass, Fare
FROM titanic
ORDER BY Fare DESC
LIMIT 5;








