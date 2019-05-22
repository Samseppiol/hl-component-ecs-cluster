CloudFormation do 

    ECS_Cluster('EcsCluster') {
        ClusterName FnSub(cluster_name) if defined? cluster_name
    }

    export_name = defined?(cluster_name) ? cluster_name : "${EnvironmentName}-#{component_name}"
    Output("EcsCluster") {
            Value(Ref('EcsCluster'))
            Export FnSub("#{export_name}-EcsCluster")
          }
    Output("EcsClusterArn") {
            Value(FnGetAtt('EcsCluster','Arn'))
            Export FnSub("#{export_name}-EcsClusterArn")
        }

end