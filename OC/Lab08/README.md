# description
## make a comparison between deployment and statfulset create a yaml fule for a mysql statefulset configuration. write a yaml file to define a service for the mysql statefulset

### Step 1: Comparison between Deployment and StatefulSet

#### 1- Deployment:

##### *Purpose: Manages stateless applications.

##### *Pods Management: Ensures the specified number of replicas are running at any given time. Pods are interchangeable and can be replaced or rescheduled freely.

##### *Scaling: Scaling up or down is straightforward and pods are created or terminated as needed.

##### *Pod Identifiers: Pods have dynamic names, and no guarantees about pod identity.

##### *Storage: Uses persistent volume claims (PVCs) which are dynamically provisioned and not tied to any specific pod.

#### 2- StatefulSet:

##### *Purpose: Manages stateful applications.

##### *Pods Management: Ensures the specified number of replicas are running with unique and persistent identities.

##### *Scaling: Scaling up or down requires careful consideration as the order of pod termination and creation is maintained.

##### *Pod Identifiers: Each pod has a stable, unique identifier maintained across rescheduling and scaling.

##### *Storage: Uses persistent volume claims (PVCs) that are statically provisioned and bound to each pod, ensuring data is preserved across rescheduling.

### Step 2: YAML Configuration for MySQL StatefulSet

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/0a93f850-471b-45f1-8d05-d995e9c13a3f" width="700" >

### Step 3: Service Configuration for MySQL StatefulSet

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/58a3ebae-0479-4150-8603-4d49fc5ac708" width="700" >

#### apply them:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/ca628727-717a-413e-a16d-48c1e720067b" width="700" >

### Step 4: Verify PVCs and Persistent Storage are Created

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/2dd4d7a6-aace-4299-82ce-829c0a664491" width="700" >

### Step 5: Verify Data Persistence Across Restarts 

#### 1- Exec to a pod:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/18f70656-95d5-4d48-a947-ca3f1b2e2983" width="700" >

#### 2- Create database and table:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/50fd2bd2-157a-4f70-837f-aacb71e30626" width="700" >

#### 3- Delete the pod and access again to it and check if the database and the table still there:

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/44bb2517-8d48-4fab-9c43-49b3f1024b92" width="700" >

<img src="https://github.com/saeedkouta/ivolve-training/assets/167209058/fbab1ce3-c012-4386-998c-510b070bdeba" width="700" >














