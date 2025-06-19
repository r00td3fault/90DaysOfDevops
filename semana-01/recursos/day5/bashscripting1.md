# 90DaysOfDevops
🚀 Semana 01

## ⚙️ Automatizando Tareas con Bash Scripting I

![](https://90daysdevops.295devops.com/assets/images/main.sh-bb7e3318585e1abdeade04f26d635279.png)

```bash
#!/bin/bash

# Comentario
echo "Hola Mundo"

# Variables
NOMBRE="Roxs"
echo "Hola $NOMBRE"

# Condicionales
if [ "$NOMBRE" == "Roxs" ]; then
    echo "¡Sos vos!"
else
    echo "¿Y vos quién sos?"
fi

# Bucle
for i in {1..3}; do
    echo "Iteración $i"
done

contador=1
while [ $contador -le 3 ]; do
  echo "Contador: $contador"
  ((contador++))
done
```

