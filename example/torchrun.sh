#export NCCL_SOCKET_IFNAME=ens20f1np1
export TORCH_CPP_LOG_LEVEL=INFO
export TORCH_DISTRIBUTED_DEBUG=DETAIL
export TORCH_SHOW_CPP_STACKTRACES=1

export NCCL_DEBUG=INFO
export NCCL_DEBUG_SUBSYS=INIT,GRAPH,COLL
torchrun \
  --nnodes=2 \
  --nproc_per_node=4 \
  --rdzv_id=bm \
  --rdzv_backend=c10d \
  --rdzv_endpoint=192.168.162.14:29500 \
  train.py | tee node1.log
