java_path=$(readlink /etc/alternatives/java | sed 's/\/bin\/java//')

cat > efinstall.config << EOF
######################################################################
# EnginFrame
#
# This file has been automaticaly generated on Wed Jan 19 19:45:05 UTC 2022
######################################################################

efinstall.config.version = 1.0


######################################################################
# License Agreement
# Review the license terms before installing EnginFrame
######################################################################

# Setting the property ef.accept.eula to 'true' you declare that you have read
# you have read all the terms of the EnginFrame
# license agreement and that you accept them.
#
# Values: [true|false]
ef.accept.eula = true


######################################################################
# What's new in EnginFrame 2021.0
######################################################################


######################################################################
# License File
# Install the license file
######################################################################

# License file
#kernel.eflicense = No license file. EnginFrame is running on EC2.


######################################################################
# Choose Install Location
# Choose the directory in which to install EnginFrame
######################################################################

# Install directory
nice.root.dir.ui = /opt/nice


######################################################################
# EnginFrame Update
# Preliminary Checks
######################################################################


######################################################################
# Components to install
# The list of what will be installed
######################################################################

# EnginFrame
#component_enginframe = true

# EnginFrame
#component_enginframe_finalizer = true

# EnginFrame Kernel
#component_kernel = true

# EnginFrame Applets
#component_applets = true

# Include Parser Library
#component_parser = true

# EnginFrame HTTP Authentication Plug-in
#component_http = true

# EnginFrame PAM Authentication Plug-in
#component_pam = true

# EnginFrame LDAP Authentication Plug-in
#component_ldap = true

# EnginFrame ActiveDirectory Authentication Plug-in
#component_activedirectory = true

# EnginFrame RSS Feed Supplier Plug-in
#component_rss = true

# EnginFrame LSF Grid Integration Plug-in
#component_lsf = true

# PBS Plug-in
#component_pbs = true

# Torque Plug-in
#component_torque = true

# Grid Engine Plug-in
#component_sge = true

# SLURM Plug-in
#component_slurm = true

# AWS Batch Plug-in
#component_awsbatch = true

# DCV Session Manager Plug-in
#component_dcvsm = true

# EnginFrame Demo Portal
#component_demo = true

# NEUTRO Grid Plug-in
#component_neutro = true

# EnginFrame VDI Portal
#component_vdi = true

# EnginFrame Applications Portal
#component_applications = true

# Service Manager Plug-in
#component_service-manager = true

# User Group Manager Plug-in
#component_user-group-manager = true

# AWS HPC Connector Plug-in
#component_hpc = true


######################################################################
# Java Runtime Environment (JRE) Selection
# Define which JRE will be used by EnginFrame
######################################################################

# JRE base directory
kernel.java.home = $java_path


######################################################################
# EnginFrame Spoolers
# Choose the location for the EnginFrame spoolers
######################################################################

# Spoolers directory
ef.spooler.dir = /opt/nice/enginframe/spoolers


######################################################################
# EnginFrame Repository
# Choose the location for the EnginFrame repository
######################################################################

# Repositories directory
ef.repository.dir = /opt/nice/enginframe/repository


######################################################################
# EnginFrame Sessions
# Choose the location for the EnginFrame sessions
######################################################################

# Sessions directory
ef.sessions.dir = /opt/nice/enginframe/sessions


######################################################################
# EnginFrame Data
# Choose the location for the EnginFrame data directory
######################################################################

# Data directory
ef.data.root.dir = /opt/nice/enginframe/data


######################################################################
# EnginFrame Logs and Temp
# Choose the location for the EnginFrame logs and temp directories
######################################################################

# Logs directory
ef.logs.root.dir = /opt/nice/enginframe/logs

# Temp directory
ef.temp.root.dir = /opt/nice/enginframe/tmp


######################################################################
# EnginFrame configuration
# Choose the EnginFrame configuration
######################################################################

# Choose the EnginFrame configuration:
# Values: [PRO|ENT]
ef.product = PRO


######################################################################
# EnginFrame Agent
# Choose if EnginFrame Agent will run on this machine
######################################################################

# EF Agent will be started on this machine
# Values: [true|false]
kernel.agent.on.same.machine = true


######################################################################
# Agent Configuration
# Configure the EnginFrame agent communication
######################################################################

# TCP port on which the RMI registry listens for requests
kernel.agent.rmi.port = 9999

# TCP port on which the EnginFrame agent listens for RMI requests from the EnginFrame server
kernel.agent.rmi.bind.port = 9998


######################################################################
# Agent Configuration
# Configure the EnginFrame agent communication
######################################################################

# Hostname where the agent will be launched
#kernel.agent.host = 

# TCP port on which the RMI registry listens for requests
#kernel.agent.rmi.port = 9999

# TCP port on which the EnginFrame agent listens for RMI requests from the EnginFrame server
#kernel.agent.rmi.bind.port = 9998


######################################################################
# EnginFrame Administrator
# Specify the EnginFrame administrator
######################################################################

# EnginFrame administrator
kernel.ef.admin.user = efadmin


######################################################################
# Apache Tomcat HTTPS
# Enable Apache Tomcat HTTPS
######################################################################

# Apache Tomcat with HTTPS
# Values: [true|false]
kernel.server.tomcat.https = false


######################################################################
# Apache Tomcat Configuration
# Configure Apache Tomcat
######################################################################

# OS user owning the Apache Tomcat process
kernel.ef.tomcat.user = efnobody

# Context of the EnginFrame web application
kernel.ef.root.context = enginframe

# TCP port on which Apache Tomcat listens for HTTP connections
kernel.tomcat.port = 8080

# TCP port on which Apache Tomcat listens for shutdown requests
kernel.tomcat.shutdown.port = 8005


######################################################################
# Apache Tomcat Configuration
# Configure Apache Tomcat
######################################################################

# OS user owning the Apache Tomcat process
#kernel.ef.tomcat.user = efnobody

# Context of the EnginFrame web application
#kernel.ef.root.context = enginframe

# TCP port on which Apache Tomcat listens for HTTPS connections
#kernel.tomcat.https.port = 8443

# TCP port on which Apache Tomcat listens for shutdown requests
#kernel.tomcat.shutdown.port = 8005

# Hostname to be set into the autogenerated certificate for Apache Tomcat
#kernel.server.tomcat.https.ef.hostname = $(hostname)


######################################################################
# EnginFrame Database Configuration
# Configure EnginFrame Database
######################################################################

# Select database to use
# Values: [derby|other-db]
kernel.ef.db = derby


######################################################################
# EnginFrame Database Configuration
# Configure EnginFrame Database
######################################################################

# DerbyDB port
kernel.ef.derby.db.port = 1527


######################################################################
# EnginFrame Database Configuration
# Configure EnginFrame Database
######################################################################

# JDBC URL
#kernel.ef.db.url = jdbc\:derby\://localhost\:1527/EnginFrameDB

# Username
#kernel.ef.db.admin.name = dbadmin

# Property hidden PasswordTextInput
#kernel.ef.db.admin.password = XXXXXXXX

# Save the password in the keystore
# Values: [true|false]
#kernel.ef.db.savePasswordInKeystore = false


######################################################################
# Enterprise Configuration
# Configure Enterprise features
######################################################################

# Comma separated list of server IPs and ports e.g. 192.168.0.1:7800,192.168.0.2:7800
#kernel.ef.enterprise.tcp.servers = 


######################################################################
# EnginFrame Startup
# Choose whether EnginFrame should start at boot
######################################################################

# Start EnginFrame at boot
# Values: [true|false]
kernel.start_enginframe_at_boot = true


######################################################################
# EnginFrame Startup
# Select the version to start
######################################################################

# Use the new version?
# Values: [true|false]
#kernel.update_current_version = true


######################################################################
# EnginFrame Developer's Documentation
# Choose whether to install the technical showcase and documentation
######################################################################

# Do you want to install the EnginFrame Developer's Documentation?
# Values: [true|false]
demo.install = false


######################################################################
# Authentication Manager
# Select the default authentication manager
######################################################################

# 
# Values: [pam|http|ldap|activedirectory|certificate]
default.auth.mgr = pam


######################################################################
# EnginFrame Certificate Authority Configuration
# Configure EnginFrame Certificate Authority
######################################################################

# Get username from client certificate
# Values: [true|false]
#kernel.authorization.certificate.userCertificate = false


######################################################################
# Authentication Manager Configuration
# Specify the PAM service
######################################################################

# PAM service
pam.service = system-auth


######################################################################
# Authentication Manager Configuration
# Test the PAM authentication manager
######################################################################

# Username
pam.user = 

# Property hidden PasswordTextInput
#pam.userpw = XXXXXXXX


######################################################################
# Authentication Manager Configuration
# Specify the 'ldapsearch' location
######################################################################

# Location of 'ldapsearch'
#ldap.ldapsearch = /usr/bin/ldapsearch


######################################################################
# Authentication Manager Configuration
# Specify the information needed to query the LDAP server
######################################################################

# Name of the host on which the LDAP server is located
#ldap.server = 

# TCP port on which the LDAP server listens for requests
#ldap.port = 389

# Does the LDAP server require a secure connection (TLS)?
# Values: [true|false]
#ldap.secure = false

# Use simple authentication (instead of SASL)
# Values: [true|false]
#ldap.simple.auth = true

# Default base Distinguished Name (example: 'ou=People,dc=nice')
#ldap.base = 


######################################################################
# LDAP Plug-in Configuration
# Specify username and password to test authentication
######################################################################

# Username
#ldap.user = 

# Property hidden PasswordTextInput
#ldap.userpw = XXXXXXXX


######################################################################
# Authentication Manager Configuration
# Specify the 'ldapsearch' location
######################################################################

# Location of 'ldapsearch'
#activedirectory.ldapsearch = /usr/bin/ldapsearch


######################################################################
# Authentication Manager Configuration
# Specify the information needed to query the ActiveDirectory server
######################################################################

# Name of the host on which the ActiveDirectory server is located
#activedirectory.server = 

# TCP port on which the ActiveDirectory server listens for requests
#activedirectory.port = 389

# Does the ActiveDirectory server require a secure connection (TLS)?
# Values: [true|false]
#activedirectory.secure = false

# Default base Distinguished Name
#activedirectory.base = 


######################################################################
# ActiveDirectory Plug-in Configuration
# Specify username and password to test authentication
######################################################################

# Bind as
#activedirectory.bindas = 

# Property hidden PasswordTextInput
#activedirectory.bindpwd = XXXXXXXX

# Username
#activedirectory.user = 

# Property hidden PasswordTextInput
#activedirectory.userpw = XXXXXXXX


######################################################################
# Grid Manager
# Select the grid managers
######################################################################

# 
ef.jobmanager = hpc


######################################################################
# LSF/OpenLava Integration
# Configure EnginFrame to integrate with LSF/OpenLava
######################################################################

# Shell profile file
#lsf.profile.file = /opt/lsf/conf/profile.lsf


######################################################################
# LSF/OpenLava Integration
# Configure EnginFrame to integrate with LSF/OpenLava
######################################################################

# Shell profile file
#lsf.profile.file = /opt/lsf/conf/profile.lsf


######################################################################
# PBS Integration
# Configure EnginFrame to integrate with PBS
######################################################################

# PBS binaries path
#pbs.binaries.path = /usr/pbs/bin


######################################################################
# Torque Integration
# Configure EnginFrame to integrate with Torque
######################################################################

# Torque binaries path
#torque.binaries.path = /usr/torque/bin


######################################################################
# Grid Engine Integration
# Configure EnginFrame to integrate with Grid Engine
######################################################################

# Grid Engine shell profile file
#sge.profile.file = /opt/sge/default/common/settings.sh


######################################################################
# SLURM Integration
# Configure EnginFrame to integrate with SLURM
######################################################################

# SLURM binaries path
#slurm.binaries.path = /usr/bin


######################################################################
# AWS Batch Integration
# Configure EnginFrame to integrate with AWS Batch
######################################################################

# AWS ParallelCluster name
#awsbatch.cluster = batch

# AWS ParallelCluster region
#awsbatch.region = us-east-1

# AWS profile
#awsbatch.profile = ef_aws_batch_profile

# AWS IAM role
#awsbatch.role.arn = 


######################################################################
# NEUTRO Plug-in
# Configuration of NEUTRO connection
######################################################################

# NEUTRO Master Address(es)
#neutro.neutro.master = localhost


######################################################################
# AWS HPC Connector Plug-in
# Configure AWS HPC Connector
######################################################################

# AWS profile name
hpc.aws.profile.name = 

# AWS region
hpc.aws.region = 

# AWS bucket ARN
hpc.aws.bucket.arn = 

# SSM role ARN
hpc.ssm.role.arn = 

# S3 role ARN
hpc.s3.role.arn = 

# ParallelCluster role ARN
hpc.pcluster.role.arn = 


######################################################################
# Delegate Interactive Session Manager
# Select the delegate interactive session managers
######################################################################

# DCV Session Manager
# Values: [true|false]
ef.delegate.dcvsm = true


######################################################################
# DCVSessionManager
# Configure DCV Session Manager connection
######################################################################

# OAuth2 Server URL
dcvsm.oauth2.url = https\://($hostname)\:sm-port/oauth2/token

# OAuth2 Client ID
dcvsm.oauth2.id = 

# Property hidden PasswordTextInput
#dcvsm.oauth2.psw = XXXXXXXX

# DCV Session Manager Broker URI
dcvsm.broker.url = https\://$(hostname)\:sm-port


######################################################################
# DCVSessionManager
# Configure DCV Session Manager connection
######################################################################

# Disable TLS Strict Check
# Values: [true|false]
dcvsm.no.strict.tls = false



######################################################################
# Do not modify any configuration below this line
######################################################################


intro-targets = component_enginframe,component_kernel,component_applets,component_parser,component_http,component_pam,component_ldap,component_activedirectory,component_rss,component_lsf,component_pbs,component_torque,component_sge,component_slurm,component_awsbatch,component_dcvsm,component_demo,component_neutro,component_vdi,component_applications,component_service-manager,component_user-group-manager,component_hpc,component_enginframe_finalizer,

progress-targets = cleanuptarget,
EOF
