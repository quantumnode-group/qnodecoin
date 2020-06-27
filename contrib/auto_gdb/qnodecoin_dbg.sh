#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.qnodecoincore/qnodecoind.pid file instead
qnodecoin_pid=$(<~/.qnodecoincore/testnet3/qnodecoind.pid)
sudo gdb -batch -ex "source debug.gdb" qnodecoind ${qnodecoin_pid}
