#!/bin/bash
#SBATCH --job-name=PartitionFinder
#SBATCH --mail-type=ALL
#SBATCH --mail-user=user.mail
#SBATCH -o job.out
#SBATCH -e error.file
#SBATCH --mem-per-cpu=4gb
#SBATCH -t 100:00:00

module load python partitionfinder

python PartitionFinder.py [options] <foldername>
