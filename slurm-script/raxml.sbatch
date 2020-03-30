#!/bin/bash
#SBATCH --job-name=Haikui_RAxML
#SBATCH --mail-type=ALL
#SBATCH --mail-user=user.mail
#SBATCH -o Lycium_raxml_%j.out
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=2gb
#SBATCH -t 10:00:00
#SBATCH --qos=soltis-b

# need to change based on MPI version and raxml version
# greater than 500 tax "GTRCAT"  model recommended
module load  intel/2018.1.163 raxml/8.2.12

raxmlHPC-PTHREADS-AVX -x $RANDOM -f a -k -m GTRGAMMA -t starting_tree -q Lycium82.final.part  -s Lycium82.final.fasta -n Lycium_raxmlJune20 -p $RANDOM -N 1000 -T 4
