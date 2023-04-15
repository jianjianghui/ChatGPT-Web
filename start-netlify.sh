
cd ./service
pnpm install
# 打包
pnpm build

# 运行
nohup sh -c 'export OPENAI_ACCESS_TOKEN=${OPENAI_ACCESS_TOKEN} && pnpm prod > service.log && netlify build' &
echo "Start service complete!"


cd ..
echo "" > front.log
pnpm install
nohup pnpm build > front.log &
echo "Build front complete!"
tail -f front.log
netlify build
