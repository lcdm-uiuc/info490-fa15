# Week 14 Lesson 3 #
## Introduction to Hadoop ##

In this lesson, you will learn about the popular cloud computing framework known as Hadoop. Hadoop operates by moving computations to the data. Data are stored in a special approach called, HDFS, where data are split into chunks and these chunks are distributed across many nodes in the Hadoop cluster. To improve performance, these chunks are usually replicated to provide redundancy. A Hadoop process operates on these data chunks in two phases. The first phase employs a map step to generate key-value pairs from the data (e.g., counts of words in a document). The second phase reduces the listing of key-value pairs into a single coherent representation. Formally, Hadoop is written to expect the Map and Reduce tasks to be written in Java; however, we can use Hadoop Streaming to run Python codes instead. Since we do not have access to a large Hadoop cluster, we will instead use a pre-built Docker Hadoop image to enable us to perform basic HDFS operations and to execute a simple Map/Reduce computation.

###Objectives ###
By the end of this lesson, you will be able to:

- Understand the basic concepts behind Hadoop and HDFS
- Understand how to execute basic HDFS commands
- Understand how to write Map and Reduce tasks
- Understand how to use Hadoop Streaming to execute a basic Map/Reduce process written in Python.

### Time Estimate ###

Approximately 3 hours.

### Readings ####

- Introduction to Hadoop Course [IPython Notebook](notebook/intro2dh.ipynb)
- HortonWorks Overview of [Hadoop](http://hortonworks.com/hadoop-tutorial/hello-world-an-introduction-to-hadoop-hcatalog-hive-and-pig/#overview) (Note they allow you to download a full Hadoop Virtual Machine, our Docker container approach is lighter on your host computer).


#### *Optional Additional Readings*####

- Official Hadoop [Tutorial](https://hadoop.apache.org/docs/r2.6.0/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html)

### Assessment ###

When you have completed and worked through the above readings, please take the Week 14 Lesson 3 Assessment.
