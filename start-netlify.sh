
cd ./service
pnpm install
# 打包
pnpm build

# 运行
pnpm prod
echo "Start service complete!"


cd ..
echo "" > front.log
pnpm install
nohup pnpm build > front.log &
echo "Build front complete!"
tail -f front.log
