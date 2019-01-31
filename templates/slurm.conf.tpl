# MANAGEMENT POLICIES
ControlMachine=services
AuthType=auth/munge
CryptoType=crypto/munge
SlurmUser=slurm

# NODE CONFIGURATIONS
NodeName=w1 CPUs=16 Boards=1 SocketsPerBoard=16 CoresPerSocket=1 ThreadsPerCore=1 RealMemory=32166
NodeName=w2 CPUs=8 Boards=1 SocketsPerBoard=8 CoresPerSocket=1 ThreadsPerCore=1 RealMemory=16039
NodeName=w3 CPUs=8 Boards=1 SocketsPerBoard=8 CoresPerSocket=1 ThreadsPerCore=1 RealMemory=16039
NodeName=w4 CPUs=8 Boards=1 SocketsPerBoard=8 CoresPerSocket=1 ThreadsPerCore=1 RealMemory=16039
NodeName=w5 CPUs=16 Boards=1 SocketsPerBoard=16 CoresPerSocket=1 ThreadsPerCore=1 RealMemory=32166

# PARTITION CONFIGURATIONS
PartitionName=Coin Nodes=w1,w2,w3,w4,w5 Default=YES

# ACCOUNTING   
AccountingStorageType=accounting_storage/slurmdbd
AccountingStorageHost=services
JobAcctGatherType=jobacct_gather/linux
ClusterName={{ clusterName }}

# CONNECTION
SlurmctldPort=6817
SlurmdPort=6818

# DIRECTORIES
JobCheckpointDir=/var/lib/slurm-llnl/job_checkpoint
SlurmdSpoolDir=/var/lib/slurm-llnl/slurmd
StateSaveLocation=/var/lib/slurm-llnl/state_checkpoint

# LOGGING
SlurmctldDebug=debug
SlurmctldLogFile=/var/log/slurm-llnl/slurmctld.log
SlurmdDebug=debug
SlurmdLogFile=/var/log/slurm-llnl/slurmd.log

# STATE INFO
SlurmctldPidFile=/var/run/slurm-llnl/slurmctld.pid
SlurmdPidFile=/var/run/slurm-llnl/slurmd.pid

# SCHEDULING
FastSchedule=2

# ERROR RECOVERY
ReturnToService=1

