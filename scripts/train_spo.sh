DATANUM=500
for BETA in 0.05 ; do
    python spo/run_spo.py --datanum=$DATANUM --task_name=ai_detection_polish_${DATANUM} --epochs=2 --lr=1e-4 --beta=$BETA
done

