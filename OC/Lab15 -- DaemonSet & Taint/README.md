# Description
## what is daemonset and what is it used for ? Create a DaemonSet YAMLfile with a Pod template containing an Nginx container in openshift and verify the number of pods. Using minikube, Taint the Minikube node with a specific key-value pair ‘color=red’to simulate a tainted node. Create a pod with toleration ‘color=blue’ and notice what is the status of the pod, change the toleration to ‘color=red’and notice what will happen. Make a Comparison between Taint & Toleration & Node Affinity.

### Step 1: what is the daemonset

#### A DaemonSet ensures that all (or some) Nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected. Deleting a DaemonSet will clean up the Pods it created.

### Step 2: Create 2 more nodes to test the DaemonSet

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6f6baa01-39e9-4ffa-a3f2-db03c8757146" width="1000" >

### Step 2: Create DaemonSet file

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/2bcc1ad9-8acb-44a6-ac9b-995e244c78d7" width="1000" >

## Step3 :Apply that the DaemonSet is Working

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/f8e6d1fa-ba23-4d96-af80-1a4052c0b376" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/b4523426-62f3-4047-acbc-f052dd70eae0" width="1000" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/69c0282f-7e99-4236-9ebd-773fb8432b92" width="1000" >

### Step 3: Add taint to the node

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/6e2eeb8a-20ca-40d1-a9d0-56344d04b906" width="1000" >

### Step 4: Create pod with red taint

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/7853f319-aebd-4c56-ba8d-6c9e8a2d517d" width="1000" >

### Step 5: Create pod with blue taint

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/74c3bffa-f7c2-41c5-97d2-c2fcd6f16a49" width="1000" >

### Step 6: verify the taint process

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/29d62f01-4f63-4b13-af44-07d1849306bc" width="1000" >

#### the pod with blue taint pening because there is one node and it taint with different colocr (red)

### Step 7: Kubernetes Scheduling Mechanisms: Taints & Tolerations vs Node Affinity



| Feature                  | Taints & Tolerations                            | Node Affinity                                 |
|--------------------------|-------------------------------------------------|-----------------------------------------------|
| **Mechanism**            | Repels/evicts pods based on taints and tolerations | Constrains pod scheduling based on node labels |
| **Specification**        | Taints on nodes; tolerations in pod spec        | Node affinity in pod spec                     |
| **Type of Constraints**  | Hard (NoSchedule, NoExecute) and soft (PreferNoSchedule) | Hard (requiredDuringSchedulingIgnoredDuringExecution) and soft (preferredDuringSchedulingIgnoredDuringExecution) |
| **Purpose**              | Exclude or remove pods from certain nodes       | Ensure pods run on specific nodes             |
| **Use Cases**            | Maintenance, resource isolation                 | Hardware-specific scheduling, workload distribution |







