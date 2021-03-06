# Cloud Native Infrastructure

Research and learn to build cloud-native applications based on cloud computing, cloud-native infrastructure, cloud-native patterns, etc.(研究和学习基于云计算、云原生基础架构、云原生模式等来构建云原生应用)


## Build Environment

### Install Kubernetes

- [Kubernetes vagrant centos cluster](kubernetes-vagrant-centos-cluster)

Setting up a distributed Kubernetes cluster along with Istio service mesh locally with Vagrant and VirtualBox, only PoC or Demo use.

- [Minikube](minikube-dev-env)
- Kind
- Kubeadm
- [Manual installation](manual-installation)

Deploying a Kubernetes cluster from scratch (without any tools).

## Essential skills

### Linux

- Namespace
- Cgroups
- rootfs

### Container

[TODO]

## Concepts & Usage

### etcd

- [etcd 使用](etcd/README.md)
- [etcd Clustering](https://etcd.io/docs/v3.4.0/op-guide/clustering/)
- ...

### Kubernetes Concepts & Usage

- [kubernetes](kubernetes/README.md)

- [The Kubernetes resource model](https://github.com/kubernetes/community/blob/master/contributors/design-proposals/scheduling/resources.md)

- [DNS and CoreDNS](https://draveness.me/dns-coredns/)
- [集群内部服务发现 - DNS](https://www.qikqiak.com/post/service-found-dns/) 

介绍了集群内服务发现的基本原理

> 普通的 Service：会生成servicename.namespace.svc.cluster.local的域名，会解析到 Service 对应的 ClusterIP 上，在 Pod 之间的调用可以简写成 servicename.namespace，如果处于同一个命名空间下面，甚至可以只写成 servicename 即可访问

## Learning Resource

### Blog & Course

- [Kubernetes 学习路径](https://www.infoq.cn/article/9DTX*1i1Z8hsxkdrPmhk)
- [云原生初学者入门必读](https://cloudnative.to/blog/must-read-for-cloud-native-beginner/)
- [jimmysong.io](https://jimmysong.io/)
- [云原生知识图谱](https://github.com/cloudnativeto/cloudnative-knowledge-map)

### Book

- [Kubernetes Handbook](https://jimmysong.io/kubernetes-handbook/)
- [Cloud Native Patterns: Designing Change-tolerant Software](https://weread.qq.com/web/reader/17832ae071f94ab7178264bkc81322c012c81e728d9d180)
- [Kubernetes 指南](https://kubernetes.feisky.xyz/)

### Projects, Organizations and Communities

- [Registry: Harbor](https://goharbor.io/) An open source trusted cloud native registry project that stores, signs, and scans content.
- [CNCF](https://www.cncf.io/)
- [云原生社区](https://cloudnative.to/)
