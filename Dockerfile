FROM jenkins/jenkins:latest
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY casc.yaml /var/jenkins_home/casc.yaml
# COPY seedJob.xml /usr/share/jenkins/ref/jobs/seed-job/config.xml
# COPY createJobs.groovy /var/jenkins_home/jobs/seed-job/workspace/createJobs.groovy