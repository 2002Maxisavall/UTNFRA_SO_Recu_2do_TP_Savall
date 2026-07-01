ARCHIVO="$1"
FECHA=$(date +%Y%m%d)

if [ -z "%ARCHIVO" ] || [ ! -f "$ARCHIVO" ]; then
	echo "Uso: $0 <ruta_lista_animales.txt>"
	exit 1
fi

mkdir -p /tmp/Animales/Agua
mkdir -p /tmp/Animales/Tierra/Mamiferos
mkdir -p /tmp/Animales/Tierra/Oviparos

> /tmp/animales.txt

while read -r animal habitat; do
[ -z "$animal" ] && continue
LINEA="${FECHA} - Animal: ${animal} - Habitat: ${habitat}"
echo "$LINEA" >> /tmp/animales.txt
case "$habitat" in
TM)
echo "$LINEA" > /tmp/Animales/Tierra/Mamiferos/"${animal}".txt
;;
TO)
echo "$LINEA" > /tmp/Animales/Tierra/Oviparos/"${animal}".txt
;;
AG)
echo "$LINEA" > /tmp/Animales/Agua/"${animal}".txt
;;
*)
echo "$animal: $habitat"
;;
esac
done < "$ARCHIVO"

