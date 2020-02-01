#!/bin/bash
#SBATCH --account=def-dkulic
#SBATCH --nodes=1
#SBATCH --gres=gpu:p100:2
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=2    #Maximum of CPU cores per GPU request: 6 on Cedar, 16 on Graham.
#SBATCH --mem-per-cpu=4G     # memory per node
#SBATCH --time=0-10:00       # time (DD-HH:MM)
#SBATCH --output=./STEVE_AntPyBulletEnv_%N-%j.out        # %N for node name, %j for jobID
## Main processing command
module load cuda cudnn 
source ~/tf_gpu/bin/activate
python ./master.py  config/experiments/goodruns_pybullet/AntPyBulletEnv/steve0.json 0