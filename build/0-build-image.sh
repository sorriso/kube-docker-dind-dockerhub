start=`date +%s`

rm build.log
Now=$(date +%d-%b-%H_%M)

nerdctl -n k8s.io pull docker:dind

nerdctl build \
   --no-cache \
   --namespace k8s.io \
   -t l_docker:dind . 2> ./build.log

end=`date +%s`

runtime=$((end-start))
runtimeh=$((runtime/60))
runtimes=$((runtime-runtimeh*60))

echo "Total runtime was : $runtimeh minutes $runtimes seconds"
echo "" >> ./build.log
echo "Total runtime was : $runtimeh minutes $runtimes seconds" >> ./build.log
echo ""
