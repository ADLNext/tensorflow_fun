for f in images/*.jpg
do
  base="${f##*/}"
  out=results/$1_$base
  python run_main.py --content $1 --style $f --output $out
done
