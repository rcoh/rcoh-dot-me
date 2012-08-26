mkdir env-scripts
echo "cd `pwd`; git pull" > env-scripts/update_repo
chmod +x env-scripts/update_repo
echo "@hourly `pwd`/env-scripts/update_repo" > env-scripts/cron_job
crontab env-scripts/cron_job
echo "Crontab is:"
crontab -l
