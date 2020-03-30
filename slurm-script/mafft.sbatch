#!/bin/sh
#SBATCH --job-name=mafft
#SBATCH --mail-type=ALL
#SBATCH --mail-user=user.mail
#SBATCH -o mafft-%A_%a.log
#SBATCH -N 1
#SBATCH -n 4
#SBATCH --mem-per-cpu=8gb
#SBATCH -t 6:00:00
#SBATCH --array=1-4


# This job's working directory
cd $SLURM_SUBMIT_DIR

module load mafft

file=`ls *.fasta | head -n $SLURM_ARRAY_TASK_ID | tail -n 1`

echo Running mafft on $file

mafft-linsi --thread $SLURM_TASKS_PER_NODE $file > $file.mafft
