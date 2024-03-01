
Elastic Kubernetes-AWS within existing VPC network and Subnets

The main functionality of the code are as follows:

1. Spins up a EKS cluster at AWS.
2. Parameters such as existing VPC, and two subnets in two AZ'subnets.
3. Creates a fresh SG and the rules can be moderated in the Kubernetes.tf.
4. Two nodes, on-demand scaling and the instance type can be moderated.
5. The tf modules uses a SSO for the sign-in. Therefore, the provider block may be moderated based on "AWS Configure".
6. The code also creates a fresh .pem for node authentication.

To run:

1. Modify the variables at variables.tf 
2. Replace the SubnetID's and VPC
3. tf init
4. tf plan
5. tf apply
6. tf destroy