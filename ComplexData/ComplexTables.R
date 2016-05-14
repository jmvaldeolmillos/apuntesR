## Uso de ftable()

# Para tablas de 3 o más variables. Para Cross-Tabulation.
# Se trabaja con los parámetros row.vars y col.vars.

data(Titanic)

# Visualizacion
ftable(Titanic)

# Ejercicio 1: Uso de row.vars
ftable(Titanic, row.vars = "Class")
