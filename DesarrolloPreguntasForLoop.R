### TAREA2 BIG DATA
## FOR-LOOP

# En el poder judicial tienen un sistema que clasifica los documentos por categorías, con el
# objetivo de ordenarlos de manera eficiente, las categorías más frecuentes son las medidas
# de protección y oficios con solicitudes.En cuanto a los oficios, estos van asociados a un
# caso, el cual se puede repetir más de una vez. 

## ABREVIATURAS
# Antecedentes = (ante)
# Datos Personales = (dape)
# Medidas Cautelares = (meca)
# Audiencia de Revisión de Medidas = (arme)
# Ampliación Medidas de Protección = (ampr)


## Datos ##
listaDocumentos <- list(c("mp","Juan","Christofer"),
                        c("of","av01","ampr"),
                        c("of","av01","ante"),
                        c("of","av08","arme"),
                        c("of","av02","ante"),
                        c("of","av07","ampr"),
                        c("of","av03","dape"),
                        c("of","av01","meca"),
                        c("of","av02","dape"),
                        c("mp","Antonia"),
                        c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),
                        c("of","av05","meca"),
                        c("of","av04","dape"),
                        c("of","av02","arme"))

#####################################################################
## Ejercicio 1 ##

mp_con_2<-0
for (i in 1:length(listaDocumentos)) {
if( listaDocumentos[[i]] == 'mp'&& length(listaDocumentos[[i]])==3){
  mp_con_2<-mp_con_2+1
}
}

print(mp_con_2)
# Hay 2 MP con 2 niños
mp_con_1<-0
for (i in 1:length(listaDocumentos)) {
  if( listaDocumentos[[i]] == 'mp'&& length(listaDocumentos[[i]])==2){
    mp_con_1<-mp_con_1+1
  }
}
# Hay 1 MP con 1 niños 
mp_con_3<-0
for (i in 1:length(listaDocumentos)) {
  if( listaDocumentos[[i]] == 'mp'&& length(listaDocumentos[[i]])==4){
    mp_con_3<-mp_con_3+1
  }
}
# Hay 1 MP con 3 niños

prueba1<-function(indice, numero_de_ninos,lista,cuenta){
  for (i in 1:length(lista)) {
    if( lista[[i]] == indice && length(lista[[i]])== numero_de_ninos+1){
      cuenta<-0
      cuenta<- cuenta+1
      print(paste0('hay ',cuenta," ninos en mp"))
    }}}

prueba1('mp',3,listaDocumentos,cuenta)
#Falta hacer el analisis estadistico.
# de los MP hay 1 con 1 niño, 1 con dos niños y 2 con 3 niños.

#########################################################################
## Ejercicio 2

av01 <- c("av01")
av02 <- c("av02")
av03 <- c("av03")
av04 <- c("av04")
av05 <- c("av05")

for (lista in listaDocumentos){
    if (lista[1] == "of" && lista[2] == av01){av01 <- c( av01 , lista[3])
  } else if (lista[1] == "of" && lista[2] == av02){av02 <- c(av02, lista[3])
  } else if (lista[1] == "of" && lista[2] == av03){av03 <- c(av03, lista[3])
  } else if (lista[1] == "of" && lista[2] == av04){av04 <- c(av04, lista[3])
  } else {av05 <- c(av05, lista[3])
  }}

############################################################################
## Ejercicio 3 

reprobados<-0
total<-0

for (lista in listaDocumentos){
  if(lista[1]== 'of'){
    if (lista[3]=='meca'||lista[3]== 'arme'||lista[3]=='ampr'){
    reprobados<-reprobados+1
     total<- total+1
    print(paste(lista[2]," esta rechazado"))} 
    else {print(paste(lista[2],' esta aprobado'))
      total<- total+1}
}}

print(paste('llegaron ',total,' oficios de los cuales ',reprobados,
            ' fueron reprobados y ', total-reprobados,' fueron aprobados' ))

