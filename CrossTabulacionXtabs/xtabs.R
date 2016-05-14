# Carga de los datos
Data1 <- data.frame(Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"), Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"), Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"), Test = c("Test1", "Test1", "Test2", "Test3", "Test1", "Test4", "Test4", "Test2", "Test3", "Test1"), NewOrFollowUp = c("New", "New", "New", "New", "New", "Follow-up", "New", "New", "New", "New"))

# Ejercicio 1 - Mostrar conteo de Status.
xtabs(~Status, data = Data1)

# Ejercicio 2 - Descubrir relacion entre 2 variables.
xtabs(~Reference + Status, data = Data1)

# Ejercicio 3 - Descubrir relacion entre 3 variables o categorias
xtabs(~Status + Gender + Test, data = Data1)

# Ejercicio 4 - Creating 2 Dimensional tables from Multi-Dimensional
ftable(xtabs(~Status + Gender + Test, data = Data1))

# Ejercicio 5 - Filas como porcentajes
# Con tigerstats sacamos varias estadisticas.
if(!require(tigerstats)) {install.packages("tigerstats"); require(tigerstats)}
library(tigerstats)
rowPerc(xtabs(~Status + Test, data = Data1))

# Ejercicio 6 - Columnas como porcentajes
colPerc(xtabs(~Reference + Status, data = Data1))

# Ejercicio 7 - Plotting Cross-Tabulations
plot(xtabs(~Status + Gender, data = Data1))

# Ejercicio 8 - La variable explicativa afecta a la variable respuesta?
# Eexaminar si la variable explicativa "Género" afecta a la variable de respuesta "Estado".
xtabs(~Status + Gender, data = Data1)

# Ejercicio 9 - Uso de cbind() con xtabs()
# Delante de ~ con cbind() para sacar más de una columna. Las variables de las filas se ponen después del ~
ftable(xtabs(cbind(Gender, Test) ~ Reference, data=Data1))

# Ejercicio 10 - Testeando Correlaciones con xtabs()
summary(xtabs(~Reference + Status, data=Data1))
