gpu_id=4

seeds=(2021 2022 2023 2024 2025)

for seed in ${seeds[@]}
do
    python main.py --num_sample 500  --seed $seed --epoch 2000 --practise all --rm_blocks 1 --FT MiR --gpu_id $gpu_id
    python main.py --num_sample 500  --seed $seed --epoch 2000 --practise all --rm_blocks 2 --FT MiR --gpu_id $gpu_id
    python main.py --num_sample 500  --seed $seed --epoch 2000 --practise all --rm_blocks 3 --FT MiR --gpu_id $gpu_id
done
