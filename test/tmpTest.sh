#!/bin/bash



  # Create the namespace
  kubectl create namespace canary-test

  # Spin up a container with Alpine image in a new namespace called "canary-test"
  kubectl run alpine-canary --namespace canary-test --image=alpine -- sh -c 'sleep 1m; exit;'

  # Check to see if pod is ready
  if kubectl get pods --namespace canary-test | grep -q 'Running'; then
    echo "Pod is running.";
    # Exec into the container
    kubectl exec alpine-canary --namespace canary-test -- sh -c 'echo "Hello its canary-test writing to stdout from $(hostname)"; exit'
  else
    echo "Pod isn't running yet. Waiting 10 seconds.";
    sleep 10;
    if kubectl get pods --namespace canary-test | grep -q 'Running'; then
      echo "Pod is running."
      # Exec into the container
      kubectl exec alpine-canary --namespace canary-test -- sh -c 'echo "Hello its canary-test writing to stdout from $(hostname)"; exit'
    else 
      echo "Tried twice. No luck. Something is wrong with pod."
    fi
  fi
  # Delete the namespace
  kubectl delete namespace canary-test
done
