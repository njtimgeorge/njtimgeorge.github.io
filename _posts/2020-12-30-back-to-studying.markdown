---
layout: post
title:  "And, back to studying"
date:   2020-12-30
categories: AWS certification
---

I recommend the LinkedIN Learning course called "Prepare for the AWS Certified 
Solutions Architect - Associate Exam (SAA-CO2). I took a break in the middle
to get some more hands-on practice and start this blog. Now it's time to get 
back to studying.

The course goes into the AWS well-architected framework in detail. I highly 
recommend going to the [AWS Well Architected Framework site](https://aws.amazon.com/architecture/well-architected/?wa-lens-whitepapers.sort-by=item.additionalFields.sortDate&wa-lens-whitepapers.sort-order=desc)
and downloading the white papers for the 5 pillars:

1. Operational Excellence Pillar
1. Security Pillar
1. Reliability Pillar
1. Performance Efficiency Pillar
1. Cost Optimization Pillar

Reading them in depth will give you a grounding in some of the questions you 
are likely to be asked on the exam. Also, leading up to the exam, you can review
the summary at the begininng of the documents to get the big ideas fresh in your
mind. Be sure to get a grounding in the trade-offs. The job of the architect it 
to understand the trade-offs and communicate them effectively, not to dictate a 
perfect (or official) solution!

Here are some quick highlights from the pillars:

# Operational Excellence
## Design Principles
- Perform operations as code
- Make frequent, small, reversible changes
- Refine operations procedures frequently
- Anticipate failure: Perform “pre-mortem” exercises 
- Learn from all operational failures
## Definition
- Organization
- Prepare
- Operate
- Evolve

# Performance Efficiency
## Design Principles
- Democratize advanced technologies
- Go global in minutes
- Use serverless architectures
- Experiment more often
- Consider mechanical sympathy
## Definition
- Selection
- Review
- Monitoring
- Trade-offs

# Security
## Design Principles
- Implement a strong identity foundation: Implement the principle of least privilege! 
- Enable traceability: Monitor, alert, and audit
- Apply security at all layers: Apply a defense in depth approach 
- Automate security best practices
- Protect data in transit and at rest
- Keep people away from data
- Prepare for security events
## Definition
- Identity and access management
- Detection
- Infrastructure protection
- Data protection
- Incident response

# Cost Optimization
## Design Principles
- Implement cloud financial management
- Adopt a consumption model: Pay only for the computing resources you consume
- Measure overall efficiency
- Stop spending money on undifferentiated heavy lifting: AWS does the heavy lifting of data center operations like racking, stacking, and powering servers. 
- Analyze and attribute expenditure
## Definition
- Practice Cloud Financial Management
- Expenditure and usage awareness
- Cost-effective resources
- Manage demand and supplying resources
- Optimize over time

# Reliability Pillar
## Design Principles
- Automatically recover from failure
- Test recovery procedures
- Scale horizontally to increase aggregate workload availability
- Stop guessing capacity
- Manage change in automation
## Definition
- Resiliency is the ability of a workload to recover from infrastructure or service disruptions, dynamically acquire computing resources to meet demand, and mitigate disruptions, such as misconfigurations or transient network issues.
- Availability is the percentage of time that a workload is available for use.
- Recovery Time Objective (RTO) Defined by the organization. RTO is the maximum acceptable delay between the interruption of service and restoration of service. This determines what is considered an acceptable time window when service is unavailable.
- Recovery Point Objective (RPO) Defined by the organization. RPO is the maximum acceptable amount of time since the last data recovery point. 