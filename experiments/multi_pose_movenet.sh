cd src
python main.py multi_pose --exp_id coco_movenet --dataset coco_hp --arch movenet --batch_size 24 --master_batch 4 --lr 2.5e-4 --gpus 0,1,2,3 --num_epochs 50 --lr_step 40
# test
python test.py multi_pose --exp_id coco_movenet --dataset coco_hp --arch movenet --keep_res --resume
# flip test
python test.py multi_pose --exp_id coco_movenet --dataset coco_hp --arch movenet --keep_res --resume --flip_test
cd ..