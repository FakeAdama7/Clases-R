
nombre <- c("Carlos", "Maria", "Carmen", "Pedro", "Luis", "Sara")
sexo   <- c("H", "M", "M", "H", "H", "M")
fisica  <- c(6.7, 7.2, 5.5, NA, 3.5, 6.2)
quimica <- c(8.1, 9.5, 5.0, 4.5, 5.0, 4.0)

sexo <- factor(sexo)
levels(sexo)


media <- rowMeans(cbind(fisica, quimica), na.rm = TRUE)
media


aprobado <- media >= 5
aprobado


nombre[aprobado]


df <- data.frame(nombre, sexo, fisica, quimica)
df


df$media <- media
df


df[df$sexo == "M" & df$media >= 5, c("nombre", "media")]

