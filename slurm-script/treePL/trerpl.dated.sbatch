#!/bin/bash

#SBATCH --job-name=cactus_treePL
#SBATCH --mail-type=ALL
#SBATCH --mail-user=use.mail
#SBATCH --output=treePL%A_%a.out
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=8gb
#SBATCH -t 150:00:00

###SB#ATCH --qos=soltis-b#
#SBATCH --array=1-123

module load treepl

treePL treepl.config
