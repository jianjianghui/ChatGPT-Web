
cd ./service
pnpm install
nohup pnpm start > service.log &
echo "Start service complete!"


cd ..
echo "" > front.log
pnpm install
nohup pnpm build > front.log &
echo "Start front complete!"
tail -f front.log
