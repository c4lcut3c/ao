MODEL=vit_b_16
BATCH_SIZE=256

torchrun --nproc_per_node=8 evaluate.py --model $MODEL --batch-size $BATCH_SIZE --data-path $IMAGENET_PATH --weights ViT_B_16_Weights.IMAGENET1K_V1
torchrun --nproc_per_node=8 evaluate.py --model $MODEL --batch-size $BATCH_SIZE --data-path $IMAGENET_PATH --weights ViT_B_16_Weights.IMAGENET1K_V1 --quantization
torchrun --nproc_per_node=8 evaluate.py --model $MODEL --batch-size $BATCH_SIZE --data-path $IMAGENET_PATH --weights ViT_B_16_Weights.IMAGENET1K_V1 --sparsity semi_structured
torchrun --nproc_per_node=8 evaluate.py --model $MODEL --batch-size $BATCH_SIZE --data-path $IMAGENET_PATH --weights ViT_B_16_Weights.IMAGENET1K_V1 --sparsity semi_structured --quantization
torchrun --nproc_per_node=8 evaluate.py --model $MODEL --batch-size $BATCH_SIZE --data-path $IMAGENET_PATH --sparsity bsr --sparsity-linear 0.80 --bsr 64 --weights-path checkpoints/sp0.80-ts64.pth
torchrun --nproc_per_node=8 evaluate.py --model $MODEL --batch-size $BATCH_SIZE --data-path $IMAGENET_PATH --sparsity bsr --sparsity-linear 0.80 --bsr 64 --weights-path checkpoints/sp0.80-ts64.pth --quantization