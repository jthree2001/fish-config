function kcu
  if [ $argv ]
    set -gx KUBECONFIG ~/.kube/configs/$argv[1]
    echo -- switching to $KUBECONFIG
    echo $argv[1] > ~/.kube/last_used_config
  else
    ls ~/.kube/configs
  end
end
