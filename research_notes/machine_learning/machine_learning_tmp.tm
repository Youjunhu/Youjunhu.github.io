<TeXmacs|2.1.2>

<style|generic>

<\body>
  \;

  <\equation*>
    z<rsup|l><rsub|j>=<big|sum><rsub|k>w<rsub|j
    k><rsup|l>a<rsup|l-1><rsub|k>+b<rsup|l><rsub|j>,
  </equation*>

  <\equation*>
    a<rsub|j><rsup|l>=g<around*|(|z<rsub|j><rsup|l>|)>.
  </equation*>

  <math|g> is a nonlinear function called activation function

  \;

  <\equation*>
    z<rsup|l>=w<rsup|l>a<rsup|l-1>+b<rsup|l>,
  </equation*>

  <\equation*>
    a<rsup|l>=g<around*|(|z<rsup|l>|)>.
  </equation*>

  \;

  <section|miscs>

  Learning are categorized as supervised learning, unsupervised learning, and
  reinforcement learning. Supervised learning utilizes labeled datasets to
  make predictions. The predication has two types: classification (predicting
  discrete values) and regression (predicting continuous values).
  Unsupervised learning detects patterns in the data, clustering them by any
  distinguishing characteristics. Reinforcement learning goes toward answers
  by triggering a series of rewards and penalties determined by the model
  designers.

  Though unsupervised learning and supervised learning are not completely
  formal or distinct concepts, they do help roughly categorize some of the
  things we do with machine learning algorithms. Traditionally, people refer
  to regression, classication and structured output problems as supervised
  learning. Density estimation in support of other tasks is usually
  considered unsupervised learning.

  Some machine learning algorithms do not just experience a xed dataset. For
  example,reinforcement learning algorithms interact with an environment, so
  there is a feedback loop between the learning system and its experiences.

  \;

  Compared with CS majors, physics/math majors have advantages in doing
  machine learning because it relies heavily on statistical and numerical
  methods.

  \;

  A neural network with multiple sub-networks can be considered as a deep
  learning model.

  Deep learning requires a large amount of computing power. So this is an
  \ opportunity for high performance computing community in which I am
  currently involved. This provides an important motivation for me to learn
  machine learning.

  \;

  <section|Ensemble learning>

  Ensemble learning refers to a group (or ensemble) of base learners, or
  models, which work collectively to achieve a better final prediction. A
  single model, also known as a base or weak learner, may not perform well
  individually due to high variance or high bias. However, when weak learners
  are aggregated, they can form a strong learner, as their combination
  reduces bias or variance, yielding better model performance.

  Ensemble methods are frequently illustrated using decision trees as this
  algorithm can be prone to overfitting (high variance and low bias) when it
  hasn't been pruned and it can also be prone to underfitting (low variance
  and high bias) when it's very small, like a decision stump, which is a
  decision tree with one level. Ensemble methods are used to counteract this
  behavior. It's worth noting that decision tree is not the only modeling
  technique that leverages ensemble learning to find the \Psweet spot\Q
  within the bias-variance trade-off.

  <subsection|Bagging vs. boosting>

  Bagging and boosting are two main types of ensemble learning methods. In
  bagging, weak learners are trained in parallel, but in boosting, they learn
  sequentially. This means that a series of models are constructed and with
  each new model iteration, the weights of the misclassified data in the
  previous model are increased. This redistribution of weights helps the
  algorithm identify the parameters that it needs to focus on to improve its
  performance.

  Another difference between bagging and boosting is in how they are used.
  For example, bagging methods are typically used on learners that exhibit
  high variance and low bias, whereas boosting methods are used on learners
  that exhibit low variance and high bias. While bagging can be used to avoid
  overfitting, boosting methods can be more prone to this. Parameter tuning
  can help avoid the issue.<nbsp>

  As a result, bagging and boosting have different real-world applications as
  well. Bagging has been used for loan approval processes and statistical
  genomics while boosting has been used more within image recognition apps
  and search engines.

  Boosting methods are focused on iteratively combining weak learners to
  build a strong learner that can predict more accurate outcomes. As a
  reminder, a weak learner classifies data slightly better than random
  guessing. This approach can provide robust results for prediction problems,
  and can even outperform neural networks and support vector machines for
  tasks like image retrieval

  Boosting algorithms can differ in how they create and aggregate weak
  learners during the sequential process.

  \;

  There are different types of neural networks to address specific problems.
  For example,

  <\itemize>
    <item>Convolutional neural networks (CNNs), used primarily in computer
    vision and image classification applications, can detect features and
    patterns within an image, enabling tasks, like object detection or
    recognition.

    <item>Recurrent neural network (RNNs) are typically used in natural
    language and speech recognition applications as it leverages sequential
    or times series data.
  </itemize>

  \;

  \;

  Artificial intelligence (AI) was founded as an academic discipline in 1956,
  and in the years since has experienced several waves of optimism, followed
  by disappointment and the loss of funding (known as an "AI winter"),
  followed by new approaches, success and renewed funding

  \;

  Assume that all the weights and biases in all layers beyong the
  <math|l<rsup|th>> layer are fixed, then the cost function <math|C<rsub|x>>
  is fully determined by the inputs <math|z<rsup|l>> in the <math|l<rsup|th>>
  layer, i.e., <math|C<rsub|x>> can be consider to be a function of inputs in
  the <math|l<rsup|th>> layer. Then we can define the following partial
  derivative:

  <\equation>
    <label|22-3-11-p1>\<delta\><rsup|l><rsub|j>\<equiv\><frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|j><rsup|l>>,
  </equation>

  where the partial derivative are taken with tall inputs
  <math|z<rsub|J><rsup|l>> with <math|J\<neq\>j> in the <math|l<rsup|th>>
  layer keeping fixed. <math|\<delta\><rsup|l><rsub|j>> defined in Eq.
  (<reference|22-3-11-p1>) is named as the error of neuron
  <math|<around*|(|l,j|)>>.

  Next, let us derive the relation between <math|\<delta\><rsup|l>> and
  <math|\<delta\><rsup|l+1>>.

  \;

  \;

  Deep learning distinguishes itself from classical machine learning by the
  type of data that it works with and the methods in which it learns.

  Then, through the processes of gradient descent and backpropagation, the
  deep learning algorithm adjusts itself (weights and biases), allowing it to
  make predictions about a new photo of an animal with increased precision.

  There are different types of neural networks to address specific problems.
  For example,

  <\itemize>
    <item>Convolutional neural networks (CNNs), used primarily in computer
    vision and image classification applications, can detect features and
    patterns within an image, enabling tasks, like object detection or
    recognition. In 2015, a CNN beated a human in an object recognition
    challenge for the first time.

    <item>Recurrent neural network (RNNs) are typically used in natural
    language and speech recognition applications as it leverages sequential
    or times series data.
  </itemize>

  Deep learning applications

  Real-world deep learning applications are a part of our daily lives, but in
  most cases, they are so well-integrated into products and services that
  users are unaware of the complex data processing that is taking place in
  the background. Some of these examples include the following:

  Law enforcement. Deep learning algorithms can analyze and learn from
  transactional data to identify dangerous patterns that indicate possible
  fraudulent or criminal activity. Speech recognition, computer vision, and
  other deep learning applications can improve the efficiency and
  effectiveness of investigative analysis by extracting patterns and evidence
  from sound and video recordings, images, and documents, which helps law
  enforcement analyze large amounts of data more quickly and accurately.

  Financial services. Financial institutions regularly use predictive
  analytics to drive algorithmic trading of stocks, assess business risks for
  loan approvals, detect fraud, and help manage credit and investment
  portfolios for clients.

  Customer service. Many organizations incorporate deep learning technology
  into their customer service processes. Chatbots are a straightforward form
  of AI. More sophisticated chatbot solutions attempt to determine ambiguous
  questions through learning. Based on the responses it receives, the chatbot
  tries to answer ambiguous questions. Virtual assistants like Apple's Siri,
  Amazon Alexa, or Google Assistant extends the idea of a chatbot by enabling
  speech recognition functionality.

  Healthcare. Image recognition applications can support medical imaging
  specialists and radiologists, helping them analyze and assess more images
  in less time.

  \;

  Deep learning requires a large amount of computing power. High performance
  graphical processing units (GPUs) are ideal because they can handle a large
  volume of calculations in multiple cores with copious memory available.
  However, managing multiple GPUs on-premises can create a large demand on
  internal resources and be incredibly costly to scale.

  Assume that all the weights and biases in all layers beyong the
  <math|l<rsup|th>> layer are fixed, then the cost function <math|C<rsub|x>>
  is fully determined by the inputs <math|z<rsup|l>> in the <math|l<rsup|th>>
  layer, i.e., <math|C<rsub|x>> can be consider to be a function of inputs in
  the <math|l<rsup|th>> layer.

  A neural network with multiple layers can be considered as a deep learning
  model for two reasons: (1) it has many layers (so it is deep) and (2)
  automatical feature extraction capability, which is considered as a
  characteristic of deep learning models.

  \;

  The question to what is the difference between ML and AI is answered by
  Judea Pearl in <with|font-shape|italic|The Book of Why>. Accordingly, ML
  learns and predicts based on passive observations, whereas AI implies an
  agent interacting with the environment to learn and take actions that
  maximize its chance of successfully achieving its goals (e.g., reinforce
  learning used in robots). Does an agent change the environment? If it does
  not, then it is not \Pinteraction\Q, it is still passive. So this
  difference is meaningless.

  As of 2020, many sources continue to assert that machine learning remains a
  subfield of AI. The main disagreement is whether all of ML is part of AI,
  as this would mean that anyone using ML could claim they are using AI.
  Others have the view that not all of ML is part of AI, where only an
  'intelligent' subset of ML is part of AI.

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-height|auto>
    <associate|page-type|letter>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|22-3-11-p1|<tuple|1|?>>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|2.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>miscs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Ensemble
      learning> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Bagging vs. boosting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>