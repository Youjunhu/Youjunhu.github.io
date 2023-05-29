<TeXmacs|2.1.2>

<style|article>

<\body>
  <doc-data|<doc-title|Machine learning>|<doc-author|<author-data|<author-name|Youjun
  Hu>|<\author-affiliation>
    yjhu@ipp.cas.cn
  </author-affiliation>>>>

  \;

  <section|Introduction>

  Artificial intelligence (AI) research has tried many different approaches
  since its founding. In the first decades of the 21st century, the AI
  research is dominated by highly mathematical statistical machine learning
  (ML), which has proved highly successful, helping to solve many challenging
  problems in real life.

  Many problems in AI can be solved theoretically by searching through many
  possible solutions: Reasoning can be reduced to performing a search. Simple
  exhaustive searches are rarely sufficient for most real-world problems. The
  solution, for many problems, is to use "heuristics" or "rules of thumb"
  that prioritize choices in favor of those more likely to reach a goal. A
  very different kind of search came to prominence in the 1990s, based on the
  mathematical theory of optimization. Modern machine learning is based on
  these methods. Instead, of using detailed explanations to guide the search,
  it uses a combination of<cite|nielsen2015neural>: (a) general
  architectures; (b) trying trillions of possibilities, guided by simple
  ideas (like gradient descent) for improvement; and (c) the ability to
  recognize progress.

  I am interested in applying machine learning to problems in computational
  physics problems that traditional numerical methods can not easily handle
  either because of its computational costs being too high or its traditional
  algorithms are too complicated to easily implement.

  Enrico Fermi once criticized the complexity of a model (that contains many
  free parameters) by quoting Johnny von Neumann \PWith four parameters I can
  fit an elephant, and with five I can make him wiggle his trunk\Q.\ 

  What Fermi implies is that it is easy to fit existing data and what is
  important is to have a model with predicting capability (fitting data not
  seen yet). The artificial neural network method tackles this difficulty by
  increasing the number of free parameters to millions, with the hope of
  obtaining predicting capability.

  <section|Neural network>

  Neural networks consists of multiple layers of interconnected nodes
  (neurons), each having a weight for a connection, a bias and activation
  function. Each layer build upon the previous layer. This progression of
  computations through the network is called forward propagation. Another
  process called backpropagation uses algorithms which moves backwards
  through the layers to efficiently compute the partial derivatives of the
  loss function with respect to the weights and biases. Combining the forward
  and backward propagation, we can calculate errors in predictions and then
  adjusts the weights and biases using the gradient descent method. This
  process is called training.

  <subsection| Node (neuron or unit), weight, bias, and activation>

  As is shown in Fig. <reference|22-3-13-a1>, we use <math|w<rsub|j
  k><rsup|l>> to denote the weight for the connection from the
  <math|k<rsup|th>> neuron in the <math|<around*|(|l-1|)><rsup|th>> layer to
  the <math|j<rsup|th>> neuron in the <math|l<rsup|th>> layer. Use
  <math|b<rsub|j><rsup|l>> to denote the bias of the <math|j<rsup|th>> neuron
  in the <math|l<rsup|th>> layer.

  <\big-figure>
    <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.51gw|0.490001gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-arrow-end|\<gtr\>|gr-auto-crop|true|<graphics||<carc|<point|-4.5|3>|<point|-5.0|2.5>|<point|-4.0|2.5>>|<carc|<point|-4.5|1>|<point|-5.0|0.4>|<point|-4.0|0.5>>|<carc|<point|-4.5|-1>|<point|-5.0|-1.6>|<point|-4.0|-1.6>>|<math-at|<around*|(|l-1|)><rsup|th>
    layer|<point|-5.17698172774177|3.47334076862019>>|<math-at|l<rsup|th>
    layer|<point|0.52860789257839|3.41827859505225>>|<carc|<point|1.6|2>|<point|1.0|1.5>|<point|2.0|1.5>>|<carc|<point|1.5|0>|<point|1.0|-0.5>|<point|1.5|-1.0>>|<with|arrow-end|\<gtr\>|<line|<point|-4.01387|2.63039>|<point|1.0|1.6>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.09553|0.2>|<point|1.0|1.4>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.01387|2.63039>|<point|1.0|-0.4>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.09553|0.2>|<point|1.0|-0.5>>>|<with|arrow-end|\<gtr\>|<line|<point|-4|-1.6>|<point|1.10757166259303|1.2>>>|<with|arrow-end|\<gtr\>|<line|<point|-4|-1.6>|<point|1.0|-0.7>>>|<math-at|w<rsup|l><rsub|11>|<point|-0.96502409432465|2.08676803280858>>|<math-at|w<rsup|l><rsub|12>|<point|-0.630211386955946|1.20736201878556>>|<math-at|w<rsup|l><rsub|13>|<point|-0.28921821616616|0.725088774837941>>|<math-at|w<rsub|21><rsup|l>|<point|0.307914215901574|0.121332050363805>>|<math-at|w<rsup|l><rsub|22>|<point|-0.541856639211536|-0.244676040613838>>|<math-at|w<rsup|l><rsub|23>|<point|-0.571804994311417|-0.811480921021302>>|<math-at|b<rsup|l><rsub|1>|<point|1.30351059928562|2.18491401640429>>|<math-at|b<rsup|l><rsub|2>|<point|1.30351653657891|0.113192012832385>>|<text-at|neuron
    <math|<around*|(|l,1|)>>|<point|2.05361468315915|1.45808591612647>>|<text-at|neuron
    <math|<around*|(|l,2|)>>|<point|2.07147637650483|-0.560027317634608>>>>
  <|big-figure>
    <label|22-3-13-a1>Definition of layers, neurons, weights, and biases in a
    neural network. The <math|j<rsup|th>> neuron in the <math|l<rsup|th>>
    layer is referred to as neuron <math|<around*|(|l,j|)>>
  </big-figure>

  \;

  We use <math|a<rsub|j><rsup|l>> to denote the output (activation) of the
  <math|j<rsup|th>> neuron in <math|l<rsup|th>> layer. A neural network model
  assumes that <math|a<rsub|j><rsup|l>> is related to the <math|a<rsup|l-1>>
  (output of the previous layer) via

  <\equation>
    <label|22-3-9-e2>a<rsup|l><rsub|j>=\<sigma\><around*|(|<big|sum><rsub|k>w<rsub|j
    k><rsup|l>a<rsup|l-1><rsub|k>+b<rsup|l><rsub|j>|)>,
  </equation>

  where the summation is over all neurons in the
  <math|<around*|(|l-1|)><rsup|th>> layer and <math|\<sigma\>> is a function
  called activation function which can take various forms, e.g., step
  function,\ 

  <\equation>
    \<sigma\><around*|(|z|)>=<around*|{|<tabular|<tformat|<table|<row|<cell|1
    if z\<geqslant\>0>>|<row|<cell|0<space|1em>else>>>>>|\<nobracket\>>,
  </equation>

  rectified linear unit (ReLU),

  <\equation>
    \<sigma\><around*|(|z|)>=max<around*|(|0,z|)>,
  </equation>

  and sigmoid function (\PS\Q-shaped curve, also called logistic function)

  <\equation>
    \<sigma\><around*|(|z|)>=<frac|1|1+exp<around*|(|-z|)>>.
  </equation>

  Define <math|z<rsub|j><rsup|l>> by

  <\equation>
    <label|22-3-9-1>z<rsup|l><rsub|j>=<big|sum><rsub|k>w<rsub|j
    k><rsup|l>a<rsup|l-1><rsub|k>+b<rsup|l><rsub|j>,
  </equation>

  which can be interpreted as an weighted input to the neuron
  <math|<around*|(|l,j|)>>, then Eq. (<reference|22-3-9-e2>) is written as

  <\equation>
    a<rsub|j><rsup|l>=\<sigma\><around*|(|z<rsup|l><rsub|j>|)>.
  </equation>

  In matrix form, Eq. (<reference|22-3-9-1>) is written as

  <\equation>
    z<rsup|l>=w<rsup|l>a<rsup|l-1>+b<rsup|l>,
  </equation>

  where <math|w<rsup|l>> is a <math|J\<times\>K> matrix, <math|z<rsup|l>>
  \ and <math|b<rsup|l>> are column vectors of length <math|J>,
  <math|a<rsup|l-1>> is a column vector of length <math|K>, where <math|J>
  and <math|K> are the number of neurons in the <math|l<rsup|th>> layer and
  <math|<around*|(|l-1|)><rsup|th>> layer, respectively.

  The input layer is where data inputs are provided, and the output layer is
  where the final prediction is made. The input and output layers of a deep
  neural network are called visible layers. The layers between the input
  layer and output layer are called hidden layers. Note that the input layer
  is usually not considered as a layer of the network since it does not
  involve any computation. In tensorflow, layers refer to the computing
  layers (i.e., hidden layers and the output layer, not including the input
  layer). The activation function of each layer can be different. The
  activation function of the output layer is often chosen as None, ReLU,
  logistic/tanh, and is usually different from those used in the hidden
  layers. Here \PNone\Q means activation <math|\<sigma\><around*|(|z|)>=z>.

  <subsection|Loss function>

  Define a loss (cost, error) function by

  <\equation>
    <label|22-3-9-e1>C<around*|(|w,b|)>\<equiv\><frac|1|2n><big|sum><rsub|x><around*|\<\|\|\>|y<around*|(|x|)>-a<rsup|L>|\<\|\|\>><rsup|2>,
  </equation>

  where <math|w> and <math|b> denotes the collection of all weights and
  biases in the network, <math|n> is the total number of training examples
  <math|x>, the summation is over all the training examples,
  <math|y<around*|(|x|)>> is the desired output from the network (i.e.,
  correct answer) when <math|x> is the input, and <math|a<rsup|L>> is the
  actual output from the output layer of the network and is a function of
  <math|w,b>, and <math|x>. Note that <math|y> and <math|a<rsup|L>> are
  vectors (with number of elements being the number of neurons in the output
  layer) and <math|<around*|\<\|\|\>|\<ldots\>|\<\|\|\>>> denotes the vector
  norm. Explicitly writing out the vector norm, Eq. (<reference|22-3-9-e1>)
  is written as

  <\equation>
    <label|22-3-9-e1m>C<around*|(|w,b|)>\<equiv\><frac|1|2n><big|sum><rsub|x><big|sum><rsup|N<rsub|L>><rsub|j=1><around*|(|y<rsub|j><around*|(|x|)>-a<rsup|L><rsub|j>|)><rsup|2>,
  </equation>

  where <math|N<rsub|L>> is the number of neurons in the output layer.

  The cost function is the average error of the approximate solution away
  from the desired exact solution. So the goal of a learning algorithm is to
  find weights and biases that minimize the cost function. To minimize the
  cost function over <math|<around*|(|w,b|)>> using the gradient descent
  method, we need to compute the partial derivatives
  <math|\<partial\>C/\<partial\>w<rsup|l><rsub|j k>> and
  <math|\<partial\>C/\<partial\>b<rsup|l><rsub|j>>. Next we will discuss how
  to compute them.

  <subsection|Gradients of loss function>

  Note that the loss function involves an average over all the training
  examples. Denote the loss function for a specific training example by
  <math|C<rsub|x>>, i.e.,

  <\equation>
    <label|22-3-11-a6>C<rsub|x>=<frac|1|2><big|sum><rsup|N<rsub|L>><rsub|j=1><around*|(|y<rsub|j><around*|(|x|)>-a<rsup|L><rsub|j>|)><rsup|2>,
  </equation>

  then expression (<reference|22-3-9-e1m>) is written as

  <\equation>
    C=<frac|1|n><big|sum><rsub|x>C<rsub|x>,
  </equation>

  Then the partial derivatives <math|\<partial\>C/\<partial\>w<rsup|l><rsub|j
  k>> and <math|\<partial\>C/\<partial\>b<rsup|l><rsub|j>> can be written as
  the sum of <math|\<partial\>C<rsub|x>/\<partial\>w<rsup|l><rsub|j k>> and
  <math|\<partial\>C<rsub|x>/\<partial\>b<rsup|l><rsub|j>>, i.e.,

  <\equation>
    <label|22-3-11-a3><frac|\<partial\>C|\<partial\>w<rsub|j
    k><rsup|l>>=<frac|1|n><big|sum><rsub|x><frac|\<partial\>C<rsub|x>|\<partial\>w<rsub|j
    k><rsup|l>>,
  </equation>

  \;

  <\equation>
    <label|22-3-11-a4><frac|\<partial\>C|\<partial\>b<rsub|j><rsup|l>>=<frac|1|n><big|sum><rsub|x><frac|\<partial\>C<rsub|x>|\<partial\>b<rsub|j><rsup|l>>.
  </equation>

  The above formulas indicate that, once <math|\<partial\>C<rsub|x>/\<partial\>w<rsup|l><rsub|j
  k>> and <math|\<partial\>C<rsub|x>/\<partial\>b<rsup|l><rsub|j>> are known,
  obtaining \ <math|\<partial\>C/\<partial\>w<rsup|l><rsub|j k>> and
  <math|\<partial\>C/\<partial\>b<rsup|l><rsub|j>> is trivial, i.e., just
  averaging them. Therefore, we will focus on <math|C<rsub|x>> (i.e., the
  cost function for a fixed training example) and discuss how to compute
  <math|\<partial\>C<rsub|x>/\<partial\>w<rsup|l><rsub|j k>> and
  <math|\<partial\>C<rsub|x>/\<partial\>b<rsup|l><rsub|j>>.

  \ In practice, we do not sum over all the training examples. Instead, we
  average the derivative over a small number (say 16) of training examples (a
  mini batch) and use these approximate derivatives to advance a step. For
  the next step, we stochastically change to using a different mini batch.
  This is called stochastic gradient descent (SGD) method.

  <subsection|Back-propagating algorithm>

  The cost function <math|C<rsub|x>> is a function of weights and biases of
  all neurons (the input <math|x> and output <math|y<around*|(|x|)>> are
  fixed parameters). For a specific neuron <math|<around*|(|l,j|)>>, its
  weights and biases enter <math|C<rsub|x>> via the combination
  <math|z<rsub|j><rsup|l>=<big|sum><rsub|k>w<rsub|j
  k><rsup|l>a<rsup|l-1><rsub|k>+b<rsup|l><rsub|j>>. Then it is useful to
  define the following partial derivative:

  <\equation>
    <label|22-3-11-p1>\<delta\><rsup|l><rsub|j>\<equiv\><frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|j><rsup|l>>,
  </equation>

  where the partial derivative are taken with fixed weights and biases for
  all neurons except neuron <math|<around*|(|l,j|)>>. Note that the
  <math|a<rsub|k><rsup|l-1>> appearing in the expression of
  <math|z<rsub|j><rsup|l>> does not depend on <math|w<rsup|l><rsub|j k>> or
  <math|b<rsup|l><rsub|j>>. It only depends on the weights and biases in the
  layers <math|\<leqslant\><around*|(|l-1|)>>, which are all fixed when
  taking the derivative in expression (<reference|22-3-11-p1>).
  <math|\<delta\><rsup|l><rsub|j>> defined in expression
  (<reference|22-3-11-p1>) is often called the error of neuron
  <math|<around*|(|l,j|)>>.

  Using the chain rule, \ <math|\<partial\>C<rsub|x>/\<partial\>w<rsup|l><rsub|j
  k>> and <math|\<partial\>C<rsub|x>/\<partial\>b<rsup|l><rsub|j>> can be
  expressed in terms of <math|\<delta\><rsup|l><rsub|j>>:

  <\equation>
    <frac|\<partial\>C<rsub|x>|\<partial\>b<rsub|j><rsup|l>>=<frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|j><rsup|l>>
    <frac|\<partial\>z<rsup|l><rsub|j>|\<partial\>b<rsub|j><rsup|l>>=\<delta\><rsup|l><rsub|j>,
  </equation>

  and

  <\equation>
    <frac|\<partial\>C<rsub|x>|\<partial\>w<rsub|j
    k><rsup|l>>=<frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|j><rsup|l>>
    <frac|\<partial\>z<rsup|l><rsub|j>|\<partial\>w<rsub|j
    k><rsup|l>>=\<delta\><rsup|l><rsub|j>a<rsub|k><rsup|l-1>.
  </equation>

  Therefore, if <math|\<delta\><rsup|l><rsub|j>> is known, it is trivial to
  compute the gradients needed in the gradient descent method.

  \ 

  \;

  <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.51gw|0.490001gh>>|gr-geometry|<tuple|geometry|1par|0.6par>|gr-arrow-end|\<gtr\>|gr-auto-crop|true|<graphics||<carc|<point|-4.5|3>|<point|-5.0|2.5>|<point|-4.0|2.5>>|<carc|<point|-4.5|1>|<point|-5.0|0.4>|<point|-4.0|0.5>>|<carc|<point|-4.5|-1>|<point|-5.0|-1.6>|<point|-4.0|-1.6>>|<math-at|l<rsup|th>
  layer|<point|-5.17698172774177|3.47334076862019>>|<math-at|<around*|(|l+1|)><rsup|th>
  layer|<point|1.32660417647837|3.29448125678>>|<math-at|a<rsup|l><rsub|1>|<point|-3.89631301891785|2.83614565418706>>|<math-at|a<rsub|3><rsup|l>|<point|-4.15077803545443|-0.97771356925519>>|<math-at|a<rsub|2><rsup|l>|<point|-3.9461515385633|0.617250427305199>>|<carc|<point|1.6|2>|<point|1.0|1.5>|<point|2.0|1.5>>|<carc|<point|1.5|0>|<point|1.0|-0.5>|<point|1.5|-1.0>>|<with|arrow-end|\<gtr\>|<line|<point|-4.01387|2.63039>|<point|1.0|1.6>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.09553|0.2>|<point|1.0|1.4>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.01387|2.63039>|<point|1.0|-0.4>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.09553|0.2>|<point|1.0|-0.5>>>|<with|arrow-end|\<gtr\>|<line|<point|-4|-1.6>|<point|1.10757166259303|1.2>>>|<with|arrow-end|\<gtr\>|<line|<point|-4|-1.6>|<point|1.0|-0.7>>>|<math-at|z<rsup|l+1><rsub|1>=<big|sum><rsub|k>w<rsub|1k><rsup|l+1>a<rsup|l><rsub|k>+b<rsup|l+1><rsub|1>|<point|0.96150826564361|2.33458403624819>>|<math-at|z<rsub|2><rsup|l+1>=<big|sum><rsub|k>w<rsub|2k><rsup|l+1>a<rsub|k><rsup|l>+b<rsub|2><rsup|l+1>|<point|0.97593594576003|0.182140060060855>>|<math-at|a<rsub|1><rsup|l+1>=\<sigma\><around*|(|z<rsub|1><rsup|l+1>|)>|<point|2.3|1.4>>|<math-at|a<rsub|2><rsup|l+1>=\<sigma\><around*|(|z<rsub|2><rsup|l+1>|)>|<point|2.4|-0.6>>|<math-at||<point|-1.36648|2.91259>>>>

  \;

  \;

  \;

  For the output layer (<math|L<rsup|th>> layer),
  <math|\<delta\><rsup|l><rsub|j>> defined in Eq. (<reference|22-3-11-p1>) is
  written as

  <\equation>
    \<delta\><rsup|L><rsub|j>=<frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|j><rsup|L>>=<frac|\<partial\>C<rsub|x>|\<partial\>a<rsup|L><rsub|j>>
    <frac|\<partial\>a<rsup|L><rsub|j>|\<partial\>z<rsub|j><rsup|L>>.
  </equation>

  The dependence of <math|C<rsub|x>> on <math|a<rsub|j><rsup|L>> is
  explicitly given by Eq. (<reference|22-3-11-a6>), from which the above
  expression for <math|\<delta\><rsub|j><rsup|L>> is written as

  <\equation>
    \<delta\><rsup|L><rsub|j>=<around*|(|a<rsup|L><rsub|j>-y<rsub|j><around*|(|x|)>|)>\<sigma\><rprime|'><around*|(|z<rsub|j><rsup|L>|)>.
  </equation>

  Therefore <math|\<delta\><rsup|L><rsub|j>> is easy to compute.

  Backpropagation is a way of computing <math|\<delta\><rsup|l><rsub|j>> for
  every layer using recurrence relations: the relation between
  <math|\<delta\><rsup|l>> and <math|\<delta\><rsup|l+1>>. Noting how the
  error is propagating through the network, we know the following identity:

  <\equation>
    <frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|J><rsup|l>>d
    z<rsup|l><rsub|J>=<big|sum><rsub|j><frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|j><rsup|l+1>>d
    z<rsup|l+1><rsub|j>,
  </equation>

  with

  <\equation>
    d z<rsub|j><rsup|l+1>=w<rsup|l+1><rsub|j
    J>d<around*|(|a<rsup|l><rsub|J>|)>,
  </equation>

  i.e.,

  <\equation>
    d z<rsub|j><rsup|l+1>=w<rsup|l+1><rsub|j
    J>\<sigma\><rprime|'><around*|(|z<rsup|l><rsub|J>|)>d z<rsup|l><rsub|J>.
  </equation>

  Therefore

  <\equation>
    <frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|J><rsup|l>>=<big|sum><rsub|j><frac|\<partial\>C<rsub|x>|\<partial\>z<rsub|j><rsup|l+1>>w<rsup|l+1><rsub|j
    J>\<sigma\><rprime|'><around*|(|z<rsup|l><rsub|J>|)>.
  </equation>

  i.e.,

  <\equation>
    <label|22-3-14-a1>\<delta\><rsup|l><rsub|J>=<big|sum><rsub|j>\<delta\><rsup|l+1><rsub|j>w<rsup|l+1><rsub|j
    J>\<sigma\><rprime|'><around*|(|z<rsup|l><rsub|J>|)>.
  </equation>

  Equation (<reference|22-3-14-a1>) gives the recurrence relations of
  computing <math|\<delta\><rsup|l>> from <math|\<delta\><rsup|l+1>>. This is
  called the backpropagation algorithm. Eq. (<reference|22-3-14-a1>) can be
  written in the matrix form:

  <\equation>
    \<delta\><rsup|l>=<around*|(|<around*|(|w<rsup|l+1>|)><rsup|T>\<delta\><rsup|l+1>|)>\<odot\>\<sigma\><rprime|'><around*|(|z<rsup|l>|)>,
  </equation>

  where <math|T> stands for matrix transpose, <math|\<odot\>> is the
  element-wise product.

  <\bibliography|bib|tm-plain|../myrefs>
    <\bib-list|1>
      <bibitem*|1><label|bib-nielsen2015neural>Michael<nbsp>A Nielsen.
      <newblock><with|font-shape|italic|Neural networks and deep learning>,
      <localize|volume><nbsp>25. <newblock>Determination Press:
      http://neuralnetworksanddeeplearning.com/, 2015.<newblock>
    </bib-list>
  </bibliography>

  <section|miscs>

  \;
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|page-height|auto>
    <associate|page-medium|papyrus>
    <associate|page-type|a4>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|22-3-11-a3|<tuple|12|4>>
    <associate|22-3-11-a4|<tuple|13|4>>
    <associate|22-3-11-a6|<tuple|10|4>>
    <associate|22-3-11-p1|<tuple|14|4>>
    <associate|22-3-13-a1|<tuple|1|2>>
    <associate|22-3-14-a1|<tuple|23|6>>
    <associate|22-3-9-1|<tuple|5|2>>
    <associate|22-3-9-e1|<tuple|8|3>>
    <associate|22-3-9-e1m|<tuple|9|3>>
    <associate|22-3-9-e2|<tuple|1|2>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|2>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|2.2|3>>
    <associate|auto-6|<tuple|2.3|4>>
    <associate|auto-7|<tuple|2.4|4>>
    <associate|auto-8|<tuple|24|6>>
    <associate|auto-9|<tuple|3|6>>
    <associate|bib-nielsen2015neural|<tuple|1|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      nielsen2015neural
    </associate>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        Definition of layers, neurons, weights, and biases in a neural
        network. The <with|mode|<quote|math>|j<rsup|th>> neuron in the
        <with|mode|<quote|math>|l<rsup|th>> layer is referred to as neuron
        <with|mode|<quote|math>|<around*|(|l,j|)>>
      </surround>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Neural
      network> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc> Node (neuron or unit),
      weight, bias, and activation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Loss function
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Gradients of loss function
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Back-propagating algorithm
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>miscs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>