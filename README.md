# DO1822
В рамках экзаменационной работы необходимо было подготовить и развернуть DevOps ИТ-инфраструктуру, с включением различных программных компонентов.
С  целью организации  процесса CI/CD были  выбраны следующие компоненты: 
- GitHub
- ArgoCD
- Amazon  EKS
- Amazon  EC2
- Docker
- IaC Terraform, Ansible
В качестве основной платформы было принято решение использовать облачную инфраструктуру на базе Amazon AWS.

![image](https://user-images.githubusercontent.com/109171932/215477579-78a24d63-807d-4ee3-b799-a0c5e654a6d5.png)

Конфигурационные файлы проекта расположены – https://github.com/pkupryianau/DO1822.git

Создание облачной инфраструктуры было проведено и с пользованием решений IaC, на базе конфигурационных файлов, созданных в Terraform. Альтернативным вариантом использовалось развертывание кластера EKS – с использованием утилиты eksctl (/terraform).
![image](https://user-images.githubusercontent.com/109171932/215477866-b2f0350d-4f62-4846-959c-05a7c88e3d11.png)

С  целью создания  процесса CD было использовано ПО ArgoCD. Процесс установки описан в каталоге (/ArgoCD).
![image](https://user-images.githubusercontent.com/109171932/215477919-fd576f78-70e2-4d75-a5dc-af4ebaf848d3.png)
![image](https://user-images.githubusercontent.com/109171932/215477961-700a5837-4142-4fe4-a0fa-555d18b59a9d.png)

В качестве приложения  для развёртывания  было выбрано приложение  официального репозитория ArgoCD (https://github.com/argoproj/argocd-example-apps.git). 
Использовалось 2 варианта- настройка из вэб-интерфейса, и  с  использованием HELM. 

Для организации системы мониторинга было принято решение использовать виртуальный сервер в облаке AWS EC2. Установка производится с использованием Ansible (../ansible).
Для системы мониторинга был выбран docker-образ (sebp/elk:latest). Установка образа описана (./elk)
![image](https://user-images.githubusercontent.com/109171932/215478150-71a8e2bc-2550-4c0c-aff7-0dce5bd26c77.png)

Для организации  системы резервного копирования  проводится настройка аналогично, установка ВМ  сервера с помощью ansible-script, и  использования  docker-образа
