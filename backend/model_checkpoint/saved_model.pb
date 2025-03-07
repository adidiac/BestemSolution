Ě
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-rc2-32-g919f693420e8��
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
�
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
�
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
�
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
�
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*$
shared_nameblock2_conv1/kernel
�
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@�*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:�*
dtype0
�
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock2_conv2/kernel
�
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:�*
dtype0
�
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock3_conv1/kernel
�
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:��*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:�*
dtype0
�
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock3_conv2/kernel
�
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:�*
dtype0
�
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock3_conv3/kernel
�
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:��*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:�*
dtype0
�
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock4_conv1/kernel
�
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:��*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:�*
dtype0
�
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock4_conv2/kernel
�
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:�*
dtype0
�
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock4_conv3/kernel
�
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:��*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:�*
dtype0
�
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock5_conv1/kernel
�
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:��*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:�*
dtype0
�
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock5_conv2/kernel
�
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:��*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:�*
dtype0
�
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameblock5_conv3/kernel
�
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:��*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:�*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	�*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	�*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�d
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�c
value�cB�c B�c
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
regularization_losses
	variables
trainable_variables
		keras_api


signatures
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
regularization_losses
	variables
 trainable_variables
!	keras_api
R
"regularization_losses
#	variables
$trainable_variables
%	keras_api
R
&regularization_losses
'	variables
(trainable_variables
)	keras_api
h

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
h
0iter

1beta_1

2beta_2
	3decay
4learning_rate*m�+m�*v�+v�
 
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
*26
+27

*0
+1
�
regularization_losses
	variables
Onon_trainable_variables
Player_metrics
Qlayer_regularization_losses

Rlayers
Smetrics
trainable_variables
 
 
h

5kernel
6bias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
h

7kernel
8bias
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
R
\regularization_losses
]	variables
^trainable_variables
_	keras_api
h

9kernel
:bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
h

;kernel
<bias
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
R
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
h

=kernel
>bias
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
h

?kernel
@bias
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
h

Akernel
Bbias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
R
xregularization_losses
y	variables
ztrainable_variables
{	keras_api
h

Ckernel
Dbias
|regularization_losses
}	variables
~trainable_variables
	keras_api
l

Ekernel
Fbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

Gkernel
Hbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
V
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

Ikernel
Jbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

Kkernel
Lbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
l

Mkernel
Nbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
V
�regularization_losses
�	variables
�trainable_variables
�	keras_api
 
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
 
�
regularization_losses
	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
 trainable_variables
 
 
 
�
"regularization_losses
#	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
$trainable_variables
 
 
 
�
&regularization_losses
'	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
(trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
�
,regularization_losses
-	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
.trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv2/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv2/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
 
 

0
1
2
3

�0
�1
 

50
61
 
�
Tregularization_losses
U	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
Vtrainable_variables
 

70
81
 
�
Xregularization_losses
Y	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
Ztrainable_variables
 
 
 
�
\regularization_losses
]	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
^trainable_variables
 

90
:1
 
�
`regularization_losses
a	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
btrainable_variables
 

;0
<1
 
�
dregularization_losses
e	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
ftrainable_variables
 
 
 
�
hregularization_losses
i	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
jtrainable_variables
 

=0
>1
 
�
lregularization_losses
m	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
ntrainable_variables
 

?0
@1
 
�
pregularization_losses
q	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
rtrainable_variables
 

A0
B1
 
�
tregularization_losses
u	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
vtrainable_variables
 
 
 
�
xregularization_losses
y	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
ztrainable_variables
 

C0
D1
 
�
|regularization_losses
}	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
~trainable_variables
 

E0
F1
 
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
 

G0
H1
 
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
 
 
 
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
 

I0
J1
 
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
 

K0
L1
 
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
 

M0
N1
 
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
 
 
 
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
 
 
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api

50
61
 
 
 
 

70
81
 
 
 
 
 
 
 
 
 

90
:1
 
 
 
 

;0
<1
 
 
 
 
 
 
 
 
 

=0
>1
 
 
 
 

?0
@1
 
 
 
 

A0
B1
 
 
 
 
 
 
 
 
 

C0
D1
 
 
 
 

E0
F1
 
 
 
 

G0
H1
 
 
 
 
 
 
 
 
 

I0
J1
 
 
 
 

K0
L1
 
 
 
 

M0
N1
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_vgg16_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_vgg16_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense/kernel
dense/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *-
f(R&
$__inference_signature_wrapper_201366
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *(
f#R!
__inference__traced_save_202604
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense/kernel/vAdam/dense/bias/v*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *+
f&R$
"__inference__traced_restore_202737��
�
b
C__inference_dropout_layer_call_and_return_conditional_losses_200914

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_201169
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2010492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input
�
c
G__inference_block3_pool_layer_call_and_return_conditional_losses_199790

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
D
(__inference_dropout_layer_call_fn_202056

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_2008052
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_vgg16_layer_call_fn_201772

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2001062
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_202051

inputs
identity�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_199737
vgg16_inputV
<sequential_vgg16_block1_conv1_conv2d_readvariableop_resource:@K
=sequential_vgg16_block1_conv1_biasadd_readvariableop_resource:@V
<sequential_vgg16_block1_conv2_conv2d_readvariableop_resource:@@K
=sequential_vgg16_block1_conv2_biasadd_readvariableop_resource:@W
<sequential_vgg16_block2_conv1_conv2d_readvariableop_resource:@�L
=sequential_vgg16_block2_conv1_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block2_conv2_conv2d_readvariableop_resource:��L
=sequential_vgg16_block2_conv2_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block3_conv1_conv2d_readvariableop_resource:��L
=sequential_vgg16_block3_conv1_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block3_conv2_conv2d_readvariableop_resource:��L
=sequential_vgg16_block3_conv2_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block3_conv3_conv2d_readvariableop_resource:��L
=sequential_vgg16_block3_conv3_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block4_conv1_conv2d_readvariableop_resource:��L
=sequential_vgg16_block4_conv1_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block4_conv2_conv2d_readvariableop_resource:��L
=sequential_vgg16_block4_conv2_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block4_conv3_conv2d_readvariableop_resource:��L
=sequential_vgg16_block4_conv3_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block5_conv1_conv2d_readvariableop_resource:��L
=sequential_vgg16_block5_conv1_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block5_conv2_conv2d_readvariableop_resource:��L
=sequential_vgg16_block5_conv2_biasadd_readvariableop_resource:	�X
<sequential_vgg16_block5_conv3_conv2d_readvariableop_resource:��L
=sequential_vgg16_block5_conv3_biasadd_readvariableop_resource:	�B
/sequential_dense_matmul_readvariableop_resource:	�>
0sequential_dense_biasadd_readvariableop_resource:
identity��'sequential/dense/BiasAdd/ReadVariableOp�&sequential/dense/MatMul/ReadVariableOp�4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp�3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp�4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp�3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp�4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp�3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp�4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp�3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp�4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp�3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp�4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp�3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp�4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp�3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp�4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp�3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp�4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp�3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp�4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp�3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp�4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp�3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp�4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp�3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp�4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp�3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp�
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp�
$sequential/vgg16/block1_conv1/Conv2DConv2Dvgg16_input;sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2&
$sequential/vgg16/block1_conv1/Conv2D�
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp�
%sequential/vgg16/block1_conv1/BiasAddBiasAdd-sequential/vgg16/block1_conv1/Conv2D:output:0<sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2'
%sequential/vgg16/block1_conv1/BiasAdd�
"sequential/vgg16/block1_conv1/ReluRelu.sequential/vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2$
"sequential/vgg16/block1_conv1/Relu�
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp�
$sequential/vgg16/block1_conv2/Conv2DConv2D0sequential/vgg16/block1_conv1/Relu:activations:0;sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2&
$sequential/vgg16/block1_conv2/Conv2D�
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp�
%sequential/vgg16/block1_conv2/BiasAddBiasAdd-sequential/vgg16/block1_conv2/Conv2D:output:0<sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2'
%sequential/vgg16/block1_conv2/BiasAdd�
"sequential/vgg16/block1_conv2/ReluRelu.sequential/vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2$
"sequential/vgg16/block1_conv2/Relu�
$sequential/vgg16/block1_pool/MaxPoolMaxPool0sequential/vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block1_pool/MaxPool�
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype025
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp�
$sequential/vgg16/block2_conv1/Conv2DConv2D-sequential/vgg16/block1_pool/MaxPool:output:0;sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2&
$sequential/vgg16/block2_conv1/Conv2D�
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp�
%sequential/vgg16/block2_conv1/BiasAddBiasAdd-sequential/vgg16/block2_conv1/Conv2D:output:0<sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2'
%sequential/vgg16/block2_conv1/BiasAdd�
"sequential/vgg16/block2_conv1/ReluRelu.sequential/vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2$
"sequential/vgg16/block2_conv1/Relu�
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp�
$sequential/vgg16/block2_conv2/Conv2DConv2D0sequential/vgg16/block2_conv1/Relu:activations:0;sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2&
$sequential/vgg16/block2_conv2/Conv2D�
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp�
%sequential/vgg16/block2_conv2/BiasAddBiasAdd-sequential/vgg16/block2_conv2/Conv2D:output:0<sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2'
%sequential/vgg16/block2_conv2/BiasAdd�
"sequential/vgg16/block2_conv2/ReluRelu.sequential/vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2$
"sequential/vgg16/block2_conv2/Relu�
$sequential/vgg16/block2_pool/MaxPoolMaxPool0sequential/vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:���������%%�*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block2_pool/MaxPool�
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp�
$sequential/vgg16/block3_conv1/Conv2DConv2D-sequential/vgg16/block2_pool/MaxPool:output:0;sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv1/Conv2D�
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp�
%sequential/vgg16/block3_conv1/BiasAddBiasAdd-sequential/vgg16/block3_conv1/Conv2D:output:0<sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2'
%sequential/vgg16/block3_conv1/BiasAdd�
"sequential/vgg16/block3_conv1/ReluRelu.sequential/vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2$
"sequential/vgg16/block3_conv1/Relu�
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp�
$sequential/vgg16/block3_conv2/Conv2DConv2D0sequential/vgg16/block3_conv1/Relu:activations:0;sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv2/Conv2D�
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp�
%sequential/vgg16/block3_conv2/BiasAddBiasAdd-sequential/vgg16/block3_conv2/Conv2D:output:0<sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2'
%sequential/vgg16/block3_conv2/BiasAdd�
"sequential/vgg16/block3_conv2/ReluRelu.sequential/vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2$
"sequential/vgg16/block3_conv2/Relu�
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp�
$sequential/vgg16/block3_conv3/Conv2DConv2D0sequential/vgg16/block3_conv2/Relu:activations:0;sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv3/Conv2D�
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp�
%sequential/vgg16/block3_conv3/BiasAddBiasAdd-sequential/vgg16/block3_conv3/Conv2D:output:0<sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2'
%sequential/vgg16/block3_conv3/BiasAdd�
"sequential/vgg16/block3_conv3/ReluRelu.sequential/vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2$
"sequential/vgg16/block3_conv3/Relu�
$sequential/vgg16/block3_pool/MaxPoolMaxPool0sequential/vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block3_pool/MaxPool�
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp�
$sequential/vgg16/block4_conv1/Conv2DConv2D-sequential/vgg16/block3_pool/MaxPool:output:0;sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv1/Conv2D�
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp�
%sequential/vgg16/block4_conv1/BiasAddBiasAdd-sequential/vgg16/block4_conv1/Conv2D:output:0<sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2'
%sequential/vgg16/block4_conv1/BiasAdd�
"sequential/vgg16/block4_conv1/ReluRelu.sequential/vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:����������2$
"sequential/vgg16/block4_conv1/Relu�
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp�
$sequential/vgg16/block4_conv2/Conv2DConv2D0sequential/vgg16/block4_conv1/Relu:activations:0;sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv2/Conv2D�
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp�
%sequential/vgg16/block4_conv2/BiasAddBiasAdd-sequential/vgg16/block4_conv2/Conv2D:output:0<sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2'
%sequential/vgg16/block4_conv2/BiasAdd�
"sequential/vgg16/block4_conv2/ReluRelu.sequential/vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:����������2$
"sequential/vgg16/block4_conv2/Relu�
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp�
$sequential/vgg16/block4_conv3/Conv2DConv2D0sequential/vgg16/block4_conv2/Relu:activations:0;sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv3/Conv2D�
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp�
%sequential/vgg16/block4_conv3/BiasAddBiasAdd-sequential/vgg16/block4_conv3/Conv2D:output:0<sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2'
%sequential/vgg16/block4_conv3/BiasAdd�
"sequential/vgg16/block4_conv3/ReluRelu.sequential/vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:����������2$
"sequential/vgg16/block4_conv3/Relu�
$sequential/vgg16/block4_pool/MaxPoolMaxPool0sequential/vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block4_pool/MaxPool�
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp�
$sequential/vgg16/block5_conv1/Conv2DConv2D-sequential/vgg16/block4_pool/MaxPool:output:0;sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv1/Conv2D�
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp�
%sequential/vgg16/block5_conv1/BiasAddBiasAdd-sequential/vgg16/block5_conv1/Conv2D:output:0<sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2'
%sequential/vgg16/block5_conv1/BiasAdd�
"sequential/vgg16/block5_conv1/ReluRelu.sequential/vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2$
"sequential/vgg16/block5_conv1/Relu�
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp�
$sequential/vgg16/block5_conv2/Conv2DConv2D0sequential/vgg16/block5_conv1/Relu:activations:0;sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv2/Conv2D�
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp�
%sequential/vgg16/block5_conv2/BiasAddBiasAdd-sequential/vgg16/block5_conv2/Conv2D:output:0<sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2'
%sequential/vgg16/block5_conv2/BiasAdd�
"sequential/vgg16/block5_conv2/ReluRelu.sequential/vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2$
"sequential/vgg16/block5_conv2/Relu�
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype025
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp�
$sequential/vgg16/block5_conv3/Conv2DConv2D0sequential/vgg16/block5_conv2/Relu:activations:0;sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv3/Conv2D�
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype026
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp�
%sequential/vgg16/block5_conv3/BiasAddBiasAdd-sequential/vgg16/block5_conv3/Conv2D:output:0<sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2'
%sequential/vgg16/block5_conv3/BiasAdd�
"sequential/vgg16/block5_conv3/ReluRelu.sequential/vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2$
"sequential/vgg16/block5_conv3/Relu�
$sequential/vgg16/block5_pool/MaxPoolMaxPool0sequential/vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block5_pool/MaxPool�
:sequential/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2<
:sequential/global_average_pooling2d/Mean/reduction_indices�
(sequential/global_average_pooling2d/MeanMean-sequential/vgg16/block5_pool/MaxPool:output:0Csequential/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2*
(sequential/global_average_pooling2d/Mean�
sequential/dropout/IdentityIdentity1sequential/global_average_pooling2d/Mean:output:0*
T0*(
_output_shapes
:����������2
sequential/dropout/Identity�
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02(
&sequential/dense/MatMul/ReadVariableOp�
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/dense/MatMul�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential/dense/BiasAdd�
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
sequential/dense/Softmax}
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp5^sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2l
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input
�
�
-__inference_block2_conv2_layer_call_fn_202187

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_1999222
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������KK�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������KK�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������KK�
 
_user_specified_nameinputs
�
U
9__inference_global_average_pooling2d_layer_call_fn_202039

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *]
fXRV
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_2007982
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_block2_pool_layer_call_and_return_conditional_losses_202213

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_202737
file_prefix0
assignvariableop_dense_kernel:	�+
assignvariableop_1_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: @
&assignvariableop_7_block1_conv1_kernel:@2
$assignvariableop_8_block1_conv1_bias:@@
&assignvariableop_9_block1_conv2_kernel:@@3
%assignvariableop_10_block1_conv2_bias:@B
'assignvariableop_11_block2_conv1_kernel:@�4
%assignvariableop_12_block2_conv1_bias:	�C
'assignvariableop_13_block2_conv2_kernel:��4
%assignvariableop_14_block2_conv2_bias:	�C
'assignvariableop_15_block3_conv1_kernel:��4
%assignvariableop_16_block3_conv1_bias:	�C
'assignvariableop_17_block3_conv2_kernel:��4
%assignvariableop_18_block3_conv2_bias:	�C
'assignvariableop_19_block3_conv3_kernel:��4
%assignvariableop_20_block3_conv3_bias:	�C
'assignvariableop_21_block4_conv1_kernel:��4
%assignvariableop_22_block4_conv1_bias:	�C
'assignvariableop_23_block4_conv2_kernel:��4
%assignvariableop_24_block4_conv2_bias:	�C
'assignvariableop_25_block4_conv3_kernel:��4
%assignvariableop_26_block4_conv3_bias:	�C
'assignvariableop_27_block5_conv1_kernel:��4
%assignvariableop_28_block5_conv1_bias:	�C
'assignvariableop_29_block5_conv2_kernel:��4
%assignvariableop_30_block5_conv2_bias:	�C
'assignvariableop_31_block5_conv3_kernel:��4
%assignvariableop_32_block5_conv3_bias:	�#
assignvariableop_33_total: #
assignvariableop_34_count: %
assignvariableop_35_total_1: %
assignvariableop_36_count_1: :
'assignvariableop_37_adam_dense_kernel_m:	�3
%assignvariableop_38_adam_dense_bias_m::
'assignvariableop_39_adam_dense_kernel_v:	�3
%assignvariableop_40_adam_dense_bias_v:
identity_42��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*�
value�B�*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp&assignvariableop_7_block1_conv1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_block1_conv1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp&assignvariableop_9_block1_conv2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_block1_conv2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp'assignvariableop_11_block2_conv1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_block2_conv1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_block2_conv2_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp%assignvariableop_14_block2_conv2_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp'assignvariableop_15_block3_conv1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_block3_conv1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_block3_conv2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_block3_conv2_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp'assignvariableop_19_block3_conv3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp%assignvariableop_20_block3_conv3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp'assignvariableop_21_block4_conv1_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp%assignvariableop_22_block4_conv1_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp'assignvariableop_23_block4_conv2_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_block4_conv2_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_block4_conv3_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_block4_conv3_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp'assignvariableop_27_block5_conv1_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp%assignvariableop_28_block5_conv1_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp'assignvariableop_29_block5_conv2_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp%assignvariableop_30_block5_conv2_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp'assignvariableop_31_block5_conv3_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp%assignvariableop_32_block5_conv3_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp%assignvariableop_38_adam_dense_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41f
Identity_42IdentityIdentity_41:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_42�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
c
G__inference_block2_pool_layer_call_and_return_conditional_losses_199932

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������%%�*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������%%�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������KK�:X T
0
_output_shapes
:���������KK�
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_202045

inputs
identity�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_block3_conv1_layer_call_and_return_conditional_losses_202238

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
H
,__inference_block4_pool_layer_call_fn_202368

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_2000462
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������		�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
C__inference_dropout_layer_call_and_return_conditional_losses_202078

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_block5_conv1_layer_call_and_return_conditional_losses_202398

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_201366
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� **
f%R#
!__inference__wrapped_model_1997372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input
�
�
&__inference_vgg16_layer_call_fn_201829

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2004492
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�P
�
__inference__traced_save_202604
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*�
value�B�*B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:: : : : : :@:@:@@:@:@�:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�:��:�: : : : :	�::	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 	

_output_shapes
:@:,
(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:. *
(
_output_shapes
:��:!!

_output_shapes	
:�:"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :%&!

_output_shapes
:	�: '

_output_shapes
::%(!

_output_shapes
:	�: )

_output_shapes
::*

_output_shapes
: 
�
H
,__inference_block4_pool_layer_call_fn_202363

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_1998122
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�]
�
A__inference_vgg16_layer_call_and_return_conditional_losses_200635
input_1-
block1_conv1_200564:@!
block1_conv1_200566:@-
block1_conv2_200569:@@!
block1_conv2_200571:@.
block2_conv1_200575:@�"
block2_conv1_200577:	�/
block2_conv2_200580:��"
block2_conv2_200582:	�/
block3_conv1_200586:��"
block3_conv1_200588:	�/
block3_conv2_200591:��"
block3_conv2_200593:	�/
block3_conv3_200596:��"
block3_conv3_200598:	�/
block4_conv1_200602:��"
block4_conv1_200604:	�/
block4_conv2_200607:��"
block4_conv2_200609:	�/
block4_conv3_200612:��"
block4_conv3_200614:	�/
block5_conv1_200618:��"
block5_conv1_200620:	�/
block5_conv2_200623:��"
block5_conv2_200625:	�/
block5_conv3_200628:��"
block5_conv3_200630:	�
identity��$block1_conv1/StatefulPartitionedCall�$block1_conv2/StatefulPartitionedCall�$block2_conv1/StatefulPartitionedCall�$block2_conv2/StatefulPartitionedCall�$block3_conv1/StatefulPartitionedCall�$block3_conv2/StatefulPartitionedCall�$block3_conv3/StatefulPartitionedCall�$block4_conv1/StatefulPartitionedCall�$block4_conv2/StatefulPartitionedCall�$block4_conv3/StatefulPartitionedCall�$block5_conv1/StatefulPartitionedCall�$block5_conv2/StatefulPartitionedCall�$block5_conv3/StatefulPartitionedCall�
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_200564block1_conv1_200566*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_1998652&
$block1_conv1/StatefulPartitionedCall�
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_200569block1_conv2_200571*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_1998822&
$block1_conv2/StatefulPartitionedCall�
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������KK@* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_1998922
block1_pool/PartitionedCall�
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_200575block2_conv1_200577*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_1999052&
$block2_conv1/StatefulPartitionedCall�
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_200580block2_conv2_200582*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_1999222&
$block2_conv2/StatefulPartitionedCall�
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_1999322
block2_pool/PartitionedCall�
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_200586block3_conv1_200588*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_1999452&
$block3_conv1/StatefulPartitionedCall�
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_200591block3_conv2_200593*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_1999622&
$block3_conv2/StatefulPartitionedCall�
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_200596block3_conv3_200598*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_1999792&
$block3_conv3/StatefulPartitionedCall�
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_1999892
block3_pool/PartitionedCall�
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_200602block4_conv1_200604*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_2000022&
$block4_conv1/StatefulPartitionedCall�
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_200607block4_conv2_200609*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_2000192&
$block4_conv2/StatefulPartitionedCall�
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_200612block4_conv3_200614*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_2000362&
$block4_conv3/StatefulPartitionedCall�
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_2000462
block4_pool/PartitionedCall�
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_200618block5_conv1_200620*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_2000592&
$block5_conv1/StatefulPartitionedCall�
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_200623block5_conv2_200625*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_2000762&
$block5_conv2/StatefulPartitionedCall�
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_200628block5_conv3_200630*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_2000932&
$block5_conv3/StatefulPartitionedCall�
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_2001032
block5_pool/PartitionedCall�
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
H__inference_block3_conv2_layer_call_and_return_conditional_losses_199962

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
�
H__inference_block1_conv1_layer_call_and_return_conditional_losses_199865

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_block4_conv1_layer_call_and_return_conditional_losses_200002

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_block3_conv1_layer_call_fn_202227

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_1999452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
�
&__inference_vgg16_layer_call_fn_200161
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2001062
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
c
G__inference_block1_pool_layer_call_and_return_conditional_losses_202153

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
G__inference_block5_pool_layer_call_and_return_conditional_losses_202458

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
H__inference_block5_conv2_layer_call_and_return_conditional_losses_202418

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
H
,__inference_block5_pool_layer_call_fn_202448

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_2001032
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
H
,__inference_block1_pool_layer_call_fn_202143

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_1997462
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_block4_conv2_layer_call_and_return_conditional_losses_202338

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_block5_pool_layer_call_fn_202443

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_1998342
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
G__inference_block5_pool_layer_call_and_return_conditional_losses_199834

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_201598

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@�A
2vgg16_block2_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block2_conv2_conv2d_readvariableop_resource:��A
2vgg16_block2_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block3_conv1_conv2d_readvariableop_resource:��A
2vgg16_block3_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block3_conv2_conv2d_readvariableop_resource:��A
2vgg16_block3_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block3_conv3_conv2d_readvariableop_resource:��A
2vgg16_block3_conv3_biasadd_readvariableop_resource:	�M
1vgg16_block4_conv1_conv2d_readvariableop_resource:��A
2vgg16_block4_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block4_conv2_conv2d_readvariableop_resource:��A
2vgg16_block4_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block4_conv3_conv2d_readvariableop_resource:��A
2vgg16_block4_conv3_biasadd_readvariableop_resource:	�M
1vgg16_block5_conv1_conv2d_readvariableop_resource:��A
2vgg16_block5_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block5_conv2_conv2d_readvariableop_resource:��A
2vgg16_block5_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block5_conv3_conv2d_readvariableop_resource:��A
2vgg16_block5_conv3_biasadd_readvariableop_resource:	�7
$dense_matmul_readvariableop_resource:	�3
%dense_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�)vgg16/block1_conv1/BiasAdd/ReadVariableOp�(vgg16/block1_conv1/Conv2D/ReadVariableOp�)vgg16/block1_conv2/BiasAdd/ReadVariableOp�(vgg16/block1_conv2/Conv2D/ReadVariableOp�)vgg16/block2_conv1/BiasAdd/ReadVariableOp�(vgg16/block2_conv1/Conv2D/ReadVariableOp�)vgg16/block2_conv2/BiasAdd/ReadVariableOp�(vgg16/block2_conv2/Conv2D/ReadVariableOp�)vgg16/block3_conv1/BiasAdd/ReadVariableOp�(vgg16/block3_conv1/Conv2D/ReadVariableOp�)vgg16/block3_conv2/BiasAdd/ReadVariableOp�(vgg16/block3_conv2/Conv2D/ReadVariableOp�)vgg16/block3_conv3/BiasAdd/ReadVariableOp�(vgg16/block3_conv3/Conv2D/ReadVariableOp�)vgg16/block4_conv1/BiasAdd/ReadVariableOp�(vgg16/block4_conv1/Conv2D/ReadVariableOp�)vgg16/block4_conv2/BiasAdd/ReadVariableOp�(vgg16/block4_conv2/Conv2D/ReadVariableOp�)vgg16/block4_conv3/BiasAdd/ReadVariableOp�(vgg16/block4_conv3/Conv2D/ReadVariableOp�)vgg16/block5_conv1/BiasAdd/ReadVariableOp�(vgg16/block5_conv1/Conv2D/ReadVariableOp�)vgg16/block5_conv2/BiasAdd/ReadVariableOp�(vgg16/block5_conv2/Conv2D/ReadVariableOp�)vgg16/block5_conv3/BiasAdd/ReadVariableOp�(vgg16/block5_conv3/Conv2D/ReadVariableOp�
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg16/block1_conv1/Conv2D/ReadVariableOp�
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
vgg16/block1_conv1/Conv2D�
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv1/BiasAdd/ReadVariableOp�
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv1/BiasAdd�
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv1/Relu�
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg16/block1_conv2/Conv2D/ReadVariableOp�
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
vgg16/block1_conv2/Conv2D�
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv2/BiasAdd/ReadVariableOp�
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv2/BiasAdd�
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv2/Relu�
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
2
vgg16/block1_pool/MaxPool�
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02*
(vgg16/block2_conv1/Conv2D/ReadVariableOp�
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
vgg16/block2_conv1/Conv2D�
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block2_conv1/BiasAdd/ReadVariableOp�
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv1/BiasAdd�
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv1/Relu�
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block2_conv2/Conv2D/ReadVariableOp�
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
vgg16/block2_conv2/Conv2D�
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block2_conv2/BiasAdd/ReadVariableOp�
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv2/BiasAdd�
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv2/Relu�
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:���������%%�*
ksize
*
paddingVALID*
strides
2
vgg16/block2_pool/MaxPool�
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block3_conv1/Conv2D/ReadVariableOp�
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
vgg16/block3_conv1/Conv2D�
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block3_conv1/BiasAdd/ReadVariableOp�
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv1/BiasAdd�
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv1/Relu�
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block3_conv2/Conv2D/ReadVariableOp�
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
vgg16/block3_conv2/Conv2D�
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block3_conv2/BiasAdd/ReadVariableOp�
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv2/BiasAdd�
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv2/Relu�
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block3_conv3/Conv2D/ReadVariableOp�
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
vgg16/block3_conv3/Conv2D�
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block3_conv3/BiasAdd/ReadVariableOp�
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv3/BiasAdd�
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv3/Relu�
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
vgg16/block3_pool/MaxPool�
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block4_conv1/Conv2D/ReadVariableOp�
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
vgg16/block4_conv1/Conv2D�
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block4_conv1/BiasAdd/ReadVariableOp�
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv1/BiasAdd�
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv1/Relu�
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block4_conv2/Conv2D/ReadVariableOp�
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
vgg16/block4_conv2/Conv2D�
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block4_conv2/BiasAdd/ReadVariableOp�
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv2/BiasAdd�
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv2/Relu�
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block4_conv3/Conv2D/ReadVariableOp�
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
vgg16/block4_conv3/Conv2D�
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block4_conv3/BiasAdd/ReadVariableOp�
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv3/BiasAdd�
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv3/Relu�
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2
vgg16/block4_pool/MaxPool�
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block5_conv1/Conv2D/ReadVariableOp�
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
vgg16/block5_conv1/Conv2D�
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block5_conv1/BiasAdd/ReadVariableOp�
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv1/BiasAdd�
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv1/Relu�
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block5_conv2/Conv2D/ReadVariableOp�
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
vgg16/block5_conv2/Conv2D�
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block5_conv2/BiasAdd/ReadVariableOp�
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv2/BiasAdd�
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv2/Relu�
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block5_conv3/Conv2D/ReadVariableOp�
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
vgg16/block5_conv3/Conv2D�
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block5_conv3/BiasAdd/ReadVariableOp�
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv3/BiasAdd�
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv3/Relu�
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
vgg16/block5_pool/MaxPool�
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices�
global_average_pooling2d/MeanMean"vgg16/block5_pool/MaxPool:output:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
global_average_pooling2d/Mean�
dropout/IdentityIdentity&global_average_pooling2d/Mean:output:0*
T0*(
_output_shapes
:����������2
dropout/Identity�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense/Softmaxr
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�	
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_block5_conv1_layer_call_fn_202387

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_2000592
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
H__inference_block2_conv2_layer_call_and_return_conditional_losses_202198

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������KK�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������KK�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������KK�
 
_user_specified_nameinputs
��
�
A__inference_vgg16_layer_call_and_return_conditional_losses_202029

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@�;
,block2_conv1_biasadd_readvariableop_resource:	�G
+block2_conv2_conv2d_readvariableop_resource:��;
,block2_conv2_biasadd_readvariableop_resource:	�G
+block3_conv1_conv2d_readvariableop_resource:��;
,block3_conv1_biasadd_readvariableop_resource:	�G
+block3_conv2_conv2d_readvariableop_resource:��;
,block3_conv2_biasadd_readvariableop_resource:	�G
+block3_conv3_conv2d_readvariableop_resource:��;
,block3_conv3_biasadd_readvariableop_resource:	�G
+block4_conv1_conv2d_readvariableop_resource:��;
,block4_conv1_biasadd_readvariableop_resource:	�G
+block4_conv2_conv2d_readvariableop_resource:��;
,block4_conv2_biasadd_readvariableop_resource:	�G
+block4_conv3_conv2d_readvariableop_resource:��;
,block4_conv3_biasadd_readvariableop_resource:	�G
+block5_conv1_conv2d_readvariableop_resource:��;
,block5_conv1_biasadd_readvariableop_resource:	�G
+block5_conv2_conv2d_readvariableop_resource:��;
,block5_conv2_biasadd_readvariableop_resource:	�G
+block5_conv3_conv2d_readvariableop_resource:��;
,block5_conv3_biasadd_readvariableop_resource:	�
identity��#block1_conv1/BiasAdd/ReadVariableOp�"block1_conv1/Conv2D/ReadVariableOp�#block1_conv2/BiasAdd/ReadVariableOp�"block1_conv2/Conv2D/ReadVariableOp�#block2_conv1/BiasAdd/ReadVariableOp�"block2_conv1/Conv2D/ReadVariableOp�#block2_conv2/BiasAdd/ReadVariableOp�"block2_conv2/Conv2D/ReadVariableOp�#block3_conv1/BiasAdd/ReadVariableOp�"block3_conv1/Conv2D/ReadVariableOp�#block3_conv2/BiasAdd/ReadVariableOp�"block3_conv2/Conv2D/ReadVariableOp�#block3_conv3/BiasAdd/ReadVariableOp�"block3_conv3/Conv2D/ReadVariableOp�#block4_conv1/BiasAdd/ReadVariableOp�"block4_conv1/Conv2D/ReadVariableOp�#block4_conv2/BiasAdd/ReadVariableOp�"block4_conv2/Conv2D/ReadVariableOp�#block4_conv3/BiasAdd/ReadVariableOp�"block4_conv3/Conv2D/ReadVariableOp�#block5_conv1/BiasAdd/ReadVariableOp�"block5_conv1/Conv2D/ReadVariableOp�#block5_conv2/BiasAdd/ReadVariableOp�"block5_conv2/Conv2D/ReadVariableOp�#block5_conv3/BiasAdd/ReadVariableOp�"block5_conv3/Conv2D/ReadVariableOp�
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp�
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
block1_conv1/Conv2D�
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp�
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
block1_conv1/BiasAdd�
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
block1_conv1/Relu�
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOp�
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
block1_conv2/Conv2D�
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp�
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
block1_conv2/BiasAdd�
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
block1_conv2/Relu�
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool�
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"block2_conv1/Conv2D/ReadVariableOp�
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
block2_conv1/Conv2D�
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp�
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
block2_conv1/BiasAdd�
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
block2_conv1/Relu�
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block2_conv2/Conv2D/ReadVariableOp�
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
block2_conv2/Conv2D�
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp�
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
block2_conv2/BiasAdd�
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
block2_conv2/Relu�
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:���������%%�*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool�
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block3_conv1/Conv2D/ReadVariableOp�
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
block3_conv1/Conv2D�
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp�
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
block3_conv1/BiasAdd�
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
block3_conv1/Relu�
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block3_conv2/Conv2D/ReadVariableOp�
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
block3_conv2/Conv2D�
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp�
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
block3_conv2/BiasAdd�
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
block3_conv2/Relu�
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block3_conv3/Conv2D/ReadVariableOp�
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
block3_conv3/Conv2D�
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp�
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
block3_conv3/BiasAdd�
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
block3_conv3/Relu�
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool�
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block4_conv1/Conv2D/ReadVariableOp�
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
block4_conv1/Conv2D�
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp�
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
block4_conv1/BiasAdd�
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
block4_conv1/Relu�
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block4_conv2/Conv2D/ReadVariableOp�
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
block4_conv2/Conv2D�
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp�
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
block4_conv2/BiasAdd�
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
block4_conv2/Relu�
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block4_conv3/Conv2D/ReadVariableOp�
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
block4_conv3/Conv2D�
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp�
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
block4_conv3/BiasAdd�
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
block4_conv3/Relu�
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool�
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block5_conv1/Conv2D/ReadVariableOp�
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
block5_conv1/Conv2D�
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp�
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
block5_conv1/BiasAdd�
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
block5_conv1/Relu�
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block5_conv2/Conv2D/ReadVariableOp�
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
block5_conv2/Conv2D�
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp�
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
block5_conv2/BiasAdd�
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
block5_conv2/Relu�
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block5_conv3/Conv2D/ReadVariableOp�
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
block5_conv3/Conv2D�
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp�
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
block5_conv3/BiasAdd�
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
block5_conv3/Relu�
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool�
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
H
,__inference_block2_pool_layer_call_fn_202208

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_1999322
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������%%�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������KK�:X T
0
_output_shapes
:���������KK�
 
_user_specified_nameinputs
�]
�
A__inference_vgg16_layer_call_and_return_conditional_losses_200709
input_1-
block1_conv1_200638:@!
block1_conv1_200640:@-
block1_conv2_200643:@@!
block1_conv2_200645:@.
block2_conv1_200649:@�"
block2_conv1_200651:	�/
block2_conv2_200654:��"
block2_conv2_200656:	�/
block3_conv1_200660:��"
block3_conv1_200662:	�/
block3_conv2_200665:��"
block3_conv2_200667:	�/
block3_conv3_200670:��"
block3_conv3_200672:	�/
block4_conv1_200676:��"
block4_conv1_200678:	�/
block4_conv2_200681:��"
block4_conv2_200683:	�/
block4_conv3_200686:��"
block4_conv3_200688:	�/
block5_conv1_200692:��"
block5_conv1_200694:	�/
block5_conv2_200697:��"
block5_conv2_200699:	�/
block5_conv3_200702:��"
block5_conv3_200704:	�
identity��$block1_conv1/StatefulPartitionedCall�$block1_conv2/StatefulPartitionedCall�$block2_conv1/StatefulPartitionedCall�$block2_conv2/StatefulPartitionedCall�$block3_conv1/StatefulPartitionedCall�$block3_conv2/StatefulPartitionedCall�$block3_conv3/StatefulPartitionedCall�$block4_conv1/StatefulPartitionedCall�$block4_conv2/StatefulPartitionedCall�$block4_conv3/StatefulPartitionedCall�$block5_conv1/StatefulPartitionedCall�$block5_conv2/StatefulPartitionedCall�$block5_conv3/StatefulPartitionedCall�
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_200638block1_conv1_200640*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_1998652&
$block1_conv1/StatefulPartitionedCall�
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_200643block1_conv2_200645*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_1998822&
$block1_conv2/StatefulPartitionedCall�
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������KK@* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_1998922
block1_pool/PartitionedCall�
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_200649block2_conv1_200651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_1999052&
$block2_conv1/StatefulPartitionedCall�
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_200654block2_conv2_200656*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_1999222&
$block2_conv2/StatefulPartitionedCall�
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_1999322
block2_pool/PartitionedCall�
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_200660block3_conv1_200662*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_1999452&
$block3_conv1/StatefulPartitionedCall�
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_200665block3_conv2_200667*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_1999622&
$block3_conv2/StatefulPartitionedCall�
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_200670block3_conv3_200672*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_1999792&
$block3_conv3/StatefulPartitionedCall�
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_1999892
block3_pool/PartitionedCall�
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_200676block4_conv1_200678*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_2000022&
$block4_conv1/StatefulPartitionedCall�
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_200681block4_conv2_200683*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_2000192&
$block4_conv2/StatefulPartitionedCall�
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_200686block4_conv3_200688*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_2000362&
$block4_conv3/StatefulPartitionedCall�
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_2000462
block4_pool/PartitionedCall�
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_200692block5_conv1_200694*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_2000592&
$block5_conv1/StatefulPartitionedCall�
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_200697block5_conv2_200699*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_2000762&
$block5_conv2/StatefulPartitionedCall�
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_200702block5_conv3_200704*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_2000932&
$block5_conv3/StatefulPartitionedCall�
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_2001032
block5_pool/PartitionedCall�
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�]
�
A__inference_vgg16_layer_call_and_return_conditional_losses_200106

inputs-
block1_conv1_199866:@!
block1_conv1_199868:@-
block1_conv2_199883:@@!
block1_conv2_199885:@.
block2_conv1_199906:@�"
block2_conv1_199908:	�/
block2_conv2_199923:��"
block2_conv2_199925:	�/
block3_conv1_199946:��"
block3_conv1_199948:	�/
block3_conv2_199963:��"
block3_conv2_199965:	�/
block3_conv3_199980:��"
block3_conv3_199982:	�/
block4_conv1_200003:��"
block4_conv1_200005:	�/
block4_conv2_200020:��"
block4_conv2_200022:	�/
block4_conv3_200037:��"
block4_conv3_200039:	�/
block5_conv1_200060:��"
block5_conv1_200062:	�/
block5_conv2_200077:��"
block5_conv2_200079:	�/
block5_conv3_200094:��"
block5_conv3_200096:	�
identity��$block1_conv1/StatefulPartitionedCall�$block1_conv2/StatefulPartitionedCall�$block2_conv1/StatefulPartitionedCall�$block2_conv2/StatefulPartitionedCall�$block3_conv1/StatefulPartitionedCall�$block3_conv2/StatefulPartitionedCall�$block3_conv3/StatefulPartitionedCall�$block4_conv1/StatefulPartitionedCall�$block4_conv2/StatefulPartitionedCall�$block4_conv3/StatefulPartitionedCall�$block5_conv1/StatefulPartitionedCall�$block5_conv2/StatefulPartitionedCall�$block5_conv3/StatefulPartitionedCall�
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_199866block1_conv1_199868*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_1998652&
$block1_conv1/StatefulPartitionedCall�
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_199883block1_conv2_199885*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_1998822&
$block1_conv2/StatefulPartitionedCall�
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������KK@* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_1998922
block1_pool/PartitionedCall�
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_199906block2_conv1_199908*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_1999052&
$block2_conv1/StatefulPartitionedCall�
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_199923block2_conv2_199925*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_1999222&
$block2_conv2/StatefulPartitionedCall�
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_1999322
block2_pool/PartitionedCall�
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_199946block3_conv1_199948*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_1999452&
$block3_conv1/StatefulPartitionedCall�
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_199963block3_conv2_199965*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_1999622&
$block3_conv2/StatefulPartitionedCall�
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_199980block3_conv3_199982*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_1999792&
$block3_conv3/StatefulPartitionedCall�
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_1999892
block3_pool/PartitionedCall�
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_200003block4_conv1_200005*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_2000022&
$block4_conv1/StatefulPartitionedCall�
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_200020block4_conv2_200022*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_2000192&
$block4_conv2/StatefulPartitionedCall�
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_200037block4_conv3_200039*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_2000362&
$block4_conv3/StatefulPartitionedCall�
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_2000462
block4_pool/PartitionedCall�
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_200060block5_conv1_200062*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_2000592&
$block5_conv1/StatefulPartitionedCall�
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_200077block5_conv2_200079*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_2000762&
$block5_conv2/StatefulPartitionedCall�
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_200094block5_conv3_200096*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_2000932&
$block5_conv3/StatefulPartitionedCall�
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_2001032
block5_pool/PartitionedCall�
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_block1_conv2_layer_call_and_return_conditional_losses_199882

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
H__inference_block5_conv3_layer_call_and_return_conditional_losses_200093

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�]
�
A__inference_vgg16_layer_call_and_return_conditional_losses_200449

inputs-
block1_conv1_200378:@!
block1_conv1_200380:@-
block1_conv2_200383:@@!
block1_conv2_200385:@.
block2_conv1_200389:@�"
block2_conv1_200391:	�/
block2_conv2_200394:��"
block2_conv2_200396:	�/
block3_conv1_200400:��"
block3_conv1_200402:	�/
block3_conv2_200405:��"
block3_conv2_200407:	�/
block3_conv3_200410:��"
block3_conv3_200412:	�/
block4_conv1_200416:��"
block4_conv1_200418:	�/
block4_conv2_200421:��"
block4_conv2_200423:	�/
block4_conv3_200426:��"
block4_conv3_200428:	�/
block5_conv1_200432:��"
block5_conv1_200434:	�/
block5_conv2_200437:��"
block5_conv2_200439:	�/
block5_conv3_200442:��"
block5_conv3_200444:	�
identity��$block1_conv1/StatefulPartitionedCall�$block1_conv2/StatefulPartitionedCall�$block2_conv1/StatefulPartitionedCall�$block2_conv2/StatefulPartitionedCall�$block3_conv1/StatefulPartitionedCall�$block3_conv2/StatefulPartitionedCall�$block3_conv3/StatefulPartitionedCall�$block4_conv1/StatefulPartitionedCall�$block4_conv2/StatefulPartitionedCall�$block4_conv3/StatefulPartitionedCall�$block5_conv1/StatefulPartitionedCall�$block5_conv2/StatefulPartitionedCall�$block5_conv3/StatefulPartitionedCall�
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_200378block1_conv1_200380*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_1998652&
$block1_conv1/StatefulPartitionedCall�
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_200383block1_conv2_200385*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_1998822&
$block1_conv2/StatefulPartitionedCall�
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������KK@* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_1998922
block1_pool/PartitionedCall�
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_200389block2_conv1_200391*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_1999052&
$block2_conv1/StatefulPartitionedCall�
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_200394block2_conv2_200396*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_1999222&
$block2_conv2/StatefulPartitionedCall�
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_1999322
block2_pool/PartitionedCall�
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_200400block3_conv1_200402*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_1999452&
$block3_conv1/StatefulPartitionedCall�
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_200405block3_conv2_200407*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_1999622&
$block3_conv2/StatefulPartitionedCall�
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_200410block3_conv3_200412*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_1999792&
$block3_conv3/StatefulPartitionedCall�
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_1999892
block3_pool/PartitionedCall�
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_200416block4_conv1_200418*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_2000022&
$block4_conv1/StatefulPartitionedCall�
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_200421block4_conv2_200423*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_2000192&
$block4_conv2/StatefulPartitionedCall�
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_200426block4_conv3_200428*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_2000362&
$block4_conv3/StatefulPartitionedCall�
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_2000462
block4_pool/PartitionedCall�
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_200432block5_conv1_200434*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_2000592&
$block5_conv1/StatefulPartitionedCall�
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_200437block5_conv2_200439*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_2000762&
$block5_conv2/StatefulPartitionedCall�
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_200442block5_conv3_200444*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_2000932&
$block5_conv3/StatefulPartitionedCall�
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_2001032
block5_pool/PartitionedCall�
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_block3_conv1_layer_call_and_return_conditional_losses_199945

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
�	
F__inference_sequential_layer_call_and_return_conditional_losses_201297
vgg16_input&
vgg16_201236:@
vgg16_201238:@&
vgg16_201240:@@
vgg16_201242:@'
vgg16_201244:@�
vgg16_201246:	�(
vgg16_201248:��
vgg16_201250:	�(
vgg16_201252:��
vgg16_201254:	�(
vgg16_201256:��
vgg16_201258:	�(
vgg16_201260:��
vgg16_201262:	�(
vgg16_201264:��
vgg16_201266:	�(
vgg16_201268:��
vgg16_201270:	�(
vgg16_201272:��
vgg16_201274:	�(
vgg16_201276:��
vgg16_201278:	�(
vgg16_201280:��
vgg16_201282:	�(
vgg16_201284:��
vgg16_201286:	�
dense_201291:	�
dense_201293:
identity��dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�vgg16/StatefulPartitionedCall�
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_201236vgg16_201238vgg16_201240vgg16_201242vgg16_201244vgg16_201246vgg16_201248vgg16_201250vgg16_201252vgg16_201254vgg16_201256vgg16_201258vgg16_201260vgg16_201262vgg16_201264vgg16_201266vgg16_201268vgg16_201270vgg16_201272vgg16_201274vgg16_201276vgg16_201278vgg16_201280vgg16_201282vgg16_201284vgg16_201286*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2004492
vgg16/StatefulPartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *]
fXRV
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_2007982*
(global_average_pooling2d/PartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_2009142!
dropout/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_201291dense_201293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2008182
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input
�
�
H__inference_block4_conv3_layer_call_and_return_conditional_losses_200036

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_201715

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@�A
2vgg16_block2_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block2_conv2_conv2d_readvariableop_resource:��A
2vgg16_block2_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block3_conv1_conv2d_readvariableop_resource:��A
2vgg16_block3_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block3_conv2_conv2d_readvariableop_resource:��A
2vgg16_block3_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block3_conv3_conv2d_readvariableop_resource:��A
2vgg16_block3_conv3_biasadd_readvariableop_resource:	�M
1vgg16_block4_conv1_conv2d_readvariableop_resource:��A
2vgg16_block4_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block4_conv2_conv2d_readvariableop_resource:��A
2vgg16_block4_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block4_conv3_conv2d_readvariableop_resource:��A
2vgg16_block4_conv3_biasadd_readvariableop_resource:	�M
1vgg16_block5_conv1_conv2d_readvariableop_resource:��A
2vgg16_block5_conv1_biasadd_readvariableop_resource:	�M
1vgg16_block5_conv2_conv2d_readvariableop_resource:��A
2vgg16_block5_conv2_biasadd_readvariableop_resource:	�M
1vgg16_block5_conv3_conv2d_readvariableop_resource:��A
2vgg16_block5_conv3_biasadd_readvariableop_resource:	�7
$dense_matmul_readvariableop_resource:	�3
%dense_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�)vgg16/block1_conv1/BiasAdd/ReadVariableOp�(vgg16/block1_conv1/Conv2D/ReadVariableOp�)vgg16/block1_conv2/BiasAdd/ReadVariableOp�(vgg16/block1_conv2/Conv2D/ReadVariableOp�)vgg16/block2_conv1/BiasAdd/ReadVariableOp�(vgg16/block2_conv1/Conv2D/ReadVariableOp�)vgg16/block2_conv2/BiasAdd/ReadVariableOp�(vgg16/block2_conv2/Conv2D/ReadVariableOp�)vgg16/block3_conv1/BiasAdd/ReadVariableOp�(vgg16/block3_conv1/Conv2D/ReadVariableOp�)vgg16/block3_conv2/BiasAdd/ReadVariableOp�(vgg16/block3_conv2/Conv2D/ReadVariableOp�)vgg16/block3_conv3/BiasAdd/ReadVariableOp�(vgg16/block3_conv3/Conv2D/ReadVariableOp�)vgg16/block4_conv1/BiasAdd/ReadVariableOp�(vgg16/block4_conv1/Conv2D/ReadVariableOp�)vgg16/block4_conv2/BiasAdd/ReadVariableOp�(vgg16/block4_conv2/Conv2D/ReadVariableOp�)vgg16/block4_conv3/BiasAdd/ReadVariableOp�(vgg16/block4_conv3/Conv2D/ReadVariableOp�)vgg16/block5_conv1/BiasAdd/ReadVariableOp�(vgg16/block5_conv1/Conv2D/ReadVariableOp�)vgg16/block5_conv2/BiasAdd/ReadVariableOp�(vgg16/block5_conv2/Conv2D/ReadVariableOp�)vgg16/block5_conv3/BiasAdd/ReadVariableOp�(vgg16/block5_conv3/Conv2D/ReadVariableOp�
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg16/block1_conv1/Conv2D/ReadVariableOp�
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
vgg16/block1_conv1/Conv2D�
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv1/BiasAdd/ReadVariableOp�
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv1/BiasAdd�
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv1/Relu�
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg16/block1_conv2/Conv2D/ReadVariableOp�
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
vgg16/block1_conv2/Conv2D�
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv2/BiasAdd/ReadVariableOp�
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv2/BiasAdd�
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
vgg16/block1_conv2/Relu�
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
2
vgg16/block1_pool/MaxPool�
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02*
(vgg16/block2_conv1/Conv2D/ReadVariableOp�
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
vgg16/block2_conv1/Conv2D�
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block2_conv1/BiasAdd/ReadVariableOp�
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv1/BiasAdd�
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv1/Relu�
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block2_conv2/Conv2D/ReadVariableOp�
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
vgg16/block2_conv2/Conv2D�
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block2_conv2/BiasAdd/ReadVariableOp�
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv2/BiasAdd�
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
vgg16/block2_conv2/Relu�
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:���������%%�*
ksize
*
paddingVALID*
strides
2
vgg16/block2_pool/MaxPool�
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block3_conv1/Conv2D/ReadVariableOp�
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
vgg16/block3_conv1/Conv2D�
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block3_conv1/BiasAdd/ReadVariableOp�
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv1/BiasAdd�
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv1/Relu�
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block3_conv2/Conv2D/ReadVariableOp�
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
vgg16/block3_conv2/Conv2D�
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block3_conv2/BiasAdd/ReadVariableOp�
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv2/BiasAdd�
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv2/Relu�
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block3_conv3/Conv2D/ReadVariableOp�
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
vgg16/block3_conv3/Conv2D�
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block3_conv3/BiasAdd/ReadVariableOp�
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv3/BiasAdd�
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
vgg16/block3_conv3/Relu�
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
vgg16/block3_pool/MaxPool�
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block4_conv1/Conv2D/ReadVariableOp�
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
vgg16/block4_conv1/Conv2D�
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block4_conv1/BiasAdd/ReadVariableOp�
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv1/BiasAdd�
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv1/Relu�
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block4_conv2/Conv2D/ReadVariableOp�
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
vgg16/block4_conv2/Conv2D�
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block4_conv2/BiasAdd/ReadVariableOp�
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv2/BiasAdd�
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv2/Relu�
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block4_conv3/Conv2D/ReadVariableOp�
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
vgg16/block4_conv3/Conv2D�
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block4_conv3/BiasAdd/ReadVariableOp�
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv3/BiasAdd�
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
vgg16/block4_conv3/Relu�
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2
vgg16/block4_pool/MaxPool�
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block5_conv1/Conv2D/ReadVariableOp�
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
vgg16/block5_conv1/Conv2D�
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block5_conv1/BiasAdd/ReadVariableOp�
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv1/BiasAdd�
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv1/Relu�
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block5_conv2/Conv2D/ReadVariableOp�
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
vgg16/block5_conv2/Conv2D�
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block5_conv2/BiasAdd/ReadVariableOp�
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv2/BiasAdd�
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv2/Relu�
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02*
(vgg16/block5_conv3/Conv2D/ReadVariableOp�
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
vgg16/block5_conv3/Conv2D�
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02+
)vgg16/block5_conv3/BiasAdd/ReadVariableOp�
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv3/BiasAdd�
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
vgg16/block5_conv3/Relu�
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
vgg16/block5_pool/MaxPool�
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices�
global_average_pooling2d/MeanMean"vgg16/block5_pool/MaxPool:output:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
global_average_pooling2d/Means
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/dropout/Const�
dropout/dropout/MulMul&global_average_pooling2d/Mean:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mul�
dropout/dropout/ShapeShape&global_average_pooling2d/Mean:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mul_1�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense/Softmaxr
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�	
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_200825

inputs&
vgg16_200740:@
vgg16_200742:@&
vgg16_200744:@@
vgg16_200746:@'
vgg16_200748:@�
vgg16_200750:	�(
vgg16_200752:��
vgg16_200754:	�(
vgg16_200756:��
vgg16_200758:	�(
vgg16_200760:��
vgg16_200762:	�(
vgg16_200764:��
vgg16_200766:	�(
vgg16_200768:��
vgg16_200770:	�(
vgg16_200772:��
vgg16_200774:	�(
vgg16_200776:��
vgg16_200778:	�(
vgg16_200780:��
vgg16_200782:	�(
vgg16_200784:��
vgg16_200786:	�(
vgg16_200788:��
vgg16_200790:	�
dense_200819:	�
dense_200821:
identity��dense/StatefulPartitionedCall�vgg16/StatefulPartitionedCall�
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_200740vgg16_200742vgg16_200744vgg16_200746vgg16_200748vgg16_200750vgg16_200752vgg16_200754vgg16_200756vgg16_200758vgg16_200760vgg16_200762vgg16_200764vgg16_200766vgg16_200768vgg16_200770vgg16_200772vgg16_200774vgg16_200776vgg16_200778vgg16_200780vgg16_200782vgg16_200784vgg16_200786vgg16_200788vgg16_200790*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2001062
vgg16/StatefulPartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *]
fXRV
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_2007982*
(global_average_pooling2d/PartitionedCall�
dropout/PartitionedCallPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_2008052
dropout/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_200819dense_200821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2008182
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_block3_conv2_layer_call_and_return_conditional_losses_202258

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
a
(__inference_dropout_layer_call_fn_202061

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_2009142
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_block2_conv1_layer_call_fn_202167

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������KK�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_1999052
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������KK�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������KK@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������KK@
 
_user_specified_nameinputs
�
c
G__inference_block5_pool_layer_call_and_return_conditional_losses_202453

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
H
,__inference_block2_pool_layer_call_fn_202203

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_1997682
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_200719

inputs
identity�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_block5_conv2_layer_call_and_return_conditional_losses_200076

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
H__inference_block3_conv3_layer_call_and_return_conditional_losses_202278

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_200884
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2008252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input
�
�	
F__inference_sequential_layer_call_and_return_conditional_losses_201049

inputs&
vgg16_200988:@
vgg16_200990:@&
vgg16_200992:@@
vgg16_200994:@'
vgg16_200996:@�
vgg16_200998:	�(
vgg16_201000:��
vgg16_201002:	�(
vgg16_201004:��
vgg16_201006:	�(
vgg16_201008:��
vgg16_201010:	�(
vgg16_201012:��
vgg16_201014:	�(
vgg16_201016:��
vgg16_201018:	�(
vgg16_201020:��
vgg16_201022:	�(
vgg16_201024:��
vgg16_201026:	�(
vgg16_201028:��
vgg16_201030:	�(
vgg16_201032:��
vgg16_201034:	�(
vgg16_201036:��
vgg16_201038:	�
dense_201043:	�
dense_201045:
identity��dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�vgg16/StatefulPartitionedCall�
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_200988vgg16_200990vgg16_200992vgg16_200994vgg16_200996vgg16_200998vgg16_201000vgg16_201002vgg16_201004vgg16_201006vgg16_201008vgg16_201010vgg16_201012vgg16_201014vgg16_201016vgg16_201018vgg16_201020vgg16_201022vgg16_201024vgg16_201026vgg16_201028vgg16_201030vgg16_201032vgg16_201034vgg16_201036vgg16_201038*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2004492
vgg16/StatefulPartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *]
fXRV
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_2007982*
(global_average_pooling2d/PartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_2009142!
dropout/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_201043dense_201045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2008182
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_block1_conv1_layer_call_fn_202107

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_1998652
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_block1_conv1_layer_call_and_return_conditional_losses_202118

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_block4_conv2_layer_call_fn_202327

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_2000192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_block2_conv1_layer_call_and_return_conditional_losses_202178

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������KK�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������KK@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������KK@
 
_user_specified_nameinputs
�
�
H__inference_block4_conv1_layer_call_and_return_conditional_losses_202318

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_block4_conv1_layer_call_fn_202307

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_2000022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_201427

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2008252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
&__inference_vgg16_layer_call_fn_200561
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2004492
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
H__inference_block5_conv3_layer_call_and_return_conditional_losses_202438

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
c
G__inference_block4_pool_layer_call_and_return_conditional_losses_199812

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_201233
vgg16_input&
vgg16_201172:@
vgg16_201174:@&
vgg16_201176:@@
vgg16_201178:@'
vgg16_201180:@�
vgg16_201182:	�(
vgg16_201184:��
vgg16_201186:	�(
vgg16_201188:��
vgg16_201190:	�(
vgg16_201192:��
vgg16_201194:	�(
vgg16_201196:��
vgg16_201198:	�(
vgg16_201200:��
vgg16_201202:	�(
vgg16_201204:��
vgg16_201206:	�(
vgg16_201208:��
vgg16_201210:	�(
vgg16_201212:��
vgg16_201214:	�(
vgg16_201216:��
vgg16_201218:	�(
vgg16_201220:��
vgg16_201222:	�
dense_201227:	�
dense_201229:
identity��dense/StatefulPartitionedCall�vgg16/StatefulPartitionedCall�
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_201172vgg16_201174vgg16_201176vgg16_201178vgg16_201180vgg16_201182vgg16_201184vgg16_201186vgg16_201188vgg16_201190vgg16_201192vgg16_201194vgg16_201196vgg16_201198vgg16_201200vgg16_201202vgg16_201204vgg16_201206vgg16_201208vgg16_201210vgg16_201212vgg16_201214vgg16_201216vgg16_201218vgg16_201220vgg16_201222*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*<
_read_only_resource_inputs
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_2001062
vgg16/StatefulPartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *]
fXRV
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_2007982*
(global_average_pooling2d/PartitionedCall�
dropout/PartitionedCallPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_2008052
dropout/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_201227dense_201229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2008182
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^dense/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_namevgg16_input
�
�
H__inference_block2_conv2_layer_call_and_return_conditional_losses_199922

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������KK�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������KK�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������KK�
 
_user_specified_nameinputs
�
�
H__inference_block4_conv3_layer_call_and_return_conditional_losses_202358

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_block5_conv3_layer_call_fn_202427

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_2000932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_200805

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_block2_pool_layer_call_and_return_conditional_losses_202218

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������%%�*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������%%�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������KK�:X T
0
_output_shapes
:���������KK�
 
_user_specified_nameinputs
�
c
G__inference_block4_pool_layer_call_and_return_conditional_losses_202373

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
A__inference_dense_layer_call_and_return_conditional_losses_202098

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_block1_pool_layer_call_and_return_conditional_losses_199892

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������KK@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������@:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
c
G__inference_block5_pool_layer_call_and_return_conditional_losses_200103

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
A__inference_dense_layer_call_and_return_conditional_losses_200818

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_block1_pool_layer_call_and_return_conditional_losses_202158

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������KK@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������@:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
H__inference_block1_conv2_layer_call_and_return_conditional_losses_202138

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_202087

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_2008182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_block1_pool_layer_call_and_return_conditional_losses_199746

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
H
,__inference_block1_pool_layer_call_fn_202148

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������KK@* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_1998922
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������KK@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������@:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
��
�
A__inference_vgg16_layer_call_and_return_conditional_losses_201929

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@�;
,block2_conv1_biasadd_readvariableop_resource:	�G
+block2_conv2_conv2d_readvariableop_resource:��;
,block2_conv2_biasadd_readvariableop_resource:	�G
+block3_conv1_conv2d_readvariableop_resource:��;
,block3_conv1_biasadd_readvariableop_resource:	�G
+block3_conv2_conv2d_readvariableop_resource:��;
,block3_conv2_biasadd_readvariableop_resource:	�G
+block3_conv3_conv2d_readvariableop_resource:��;
,block3_conv3_biasadd_readvariableop_resource:	�G
+block4_conv1_conv2d_readvariableop_resource:��;
,block4_conv1_biasadd_readvariableop_resource:	�G
+block4_conv2_conv2d_readvariableop_resource:��;
,block4_conv2_biasadd_readvariableop_resource:	�G
+block4_conv3_conv2d_readvariableop_resource:��;
,block4_conv3_biasadd_readvariableop_resource:	�G
+block5_conv1_conv2d_readvariableop_resource:��;
,block5_conv1_biasadd_readvariableop_resource:	�G
+block5_conv2_conv2d_readvariableop_resource:��;
,block5_conv2_biasadd_readvariableop_resource:	�G
+block5_conv3_conv2d_readvariableop_resource:��;
,block5_conv3_biasadd_readvariableop_resource:	�
identity��#block1_conv1/BiasAdd/ReadVariableOp�"block1_conv1/Conv2D/ReadVariableOp�#block1_conv2/BiasAdd/ReadVariableOp�"block1_conv2/Conv2D/ReadVariableOp�#block2_conv1/BiasAdd/ReadVariableOp�"block2_conv1/Conv2D/ReadVariableOp�#block2_conv2/BiasAdd/ReadVariableOp�"block2_conv2/Conv2D/ReadVariableOp�#block3_conv1/BiasAdd/ReadVariableOp�"block3_conv1/Conv2D/ReadVariableOp�#block3_conv2/BiasAdd/ReadVariableOp�"block3_conv2/Conv2D/ReadVariableOp�#block3_conv3/BiasAdd/ReadVariableOp�"block3_conv3/Conv2D/ReadVariableOp�#block4_conv1/BiasAdd/ReadVariableOp�"block4_conv1/Conv2D/ReadVariableOp�#block4_conv2/BiasAdd/ReadVariableOp�"block4_conv2/Conv2D/ReadVariableOp�#block4_conv3/BiasAdd/ReadVariableOp�"block4_conv3/Conv2D/ReadVariableOp�#block5_conv1/BiasAdd/ReadVariableOp�"block5_conv1/Conv2D/ReadVariableOp�#block5_conv2/BiasAdd/ReadVariableOp�"block5_conv2/Conv2D/ReadVariableOp�#block5_conv3/BiasAdd/ReadVariableOp�"block5_conv3/Conv2D/ReadVariableOp�
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp�
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
block1_conv1/Conv2D�
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp�
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
block1_conv1/BiasAdd�
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
block1_conv1/Relu�
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOp�
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
block1_conv2/Conv2D�
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp�
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
block1_conv2/BiasAdd�
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
block1_conv2/Relu�
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:���������KK@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool�
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02$
"block2_conv1/Conv2D/ReadVariableOp�
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
block2_conv1/Conv2D�
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp�
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
block2_conv1/BiasAdd�
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
block2_conv1/Relu�
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block2_conv2/Conv2D/ReadVariableOp�
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
block2_conv2/Conv2D�
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp�
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2
block2_conv2/BiasAdd�
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
block2_conv2/Relu�
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:���������%%�*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool�
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block3_conv1/Conv2D/ReadVariableOp�
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
block3_conv1/Conv2D�
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp�
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
block3_conv1/BiasAdd�
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
block3_conv1/Relu�
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block3_conv2/Conv2D/ReadVariableOp�
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
block3_conv2/Conv2D�
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp�
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
block3_conv2/BiasAdd�
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
block3_conv2/Relu�
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block3_conv3/Conv2D/ReadVariableOp�
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
block3_conv3/Conv2D�
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp�
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2
block3_conv3/BiasAdd�
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
block3_conv3/Relu�
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool�
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block4_conv1/Conv2D/ReadVariableOp�
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
block4_conv1/Conv2D�
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp�
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
block4_conv1/BiasAdd�
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
block4_conv1/Relu�
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block4_conv2/Conv2D/ReadVariableOp�
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
block4_conv2/Conv2D�
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp�
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
block4_conv2/BiasAdd�
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
block4_conv2/Relu�
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block4_conv3/Conv2D/ReadVariableOp�
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
block4_conv3/Conv2D�
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp�
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
block4_conv3/BiasAdd�
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
block4_conv3/Relu�
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool�
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block5_conv1/Conv2D/ReadVariableOp�
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
block5_conv1/Conv2D�
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp�
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
block5_conv1/BiasAdd�
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
block5_conv1/Relu�
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block5_conv2/Conv2D/ReadVariableOp�
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
block5_conv2/Conv2D�
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp�
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
block5_conv2/BiasAdd�
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
block5_conv2/Relu�
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"block5_conv3/Conv2D/ReadVariableOp�
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
block5_conv3/Conv2D�
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp�
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2
block5_conv3/BiasAdd�
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
block5_conv3/Relu�
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool�
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
G__inference_block2_pool_layer_call_and_return_conditional_losses_199768

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
G__inference_block4_pool_layer_call_and_return_conditional_losses_200046

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������		�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_block1_conv2_layer_call_fn_202127

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_1998822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
H__inference_block5_conv1_layer_call_and_return_conditional_losses_200059

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������		�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������		�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
c
G__inference_block3_pool_layer_call_and_return_conditional_losses_202293

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_200798

inputs
identity�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_block4_conv3_layer_call_fn_202347

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_2000362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_202066

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_block3_pool_layer_call_and_return_conditional_losses_199989

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������%%�:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
c
G__inference_block3_pool_layer_call_and_return_conditional_losses_202298

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������%%�:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
c
G__inference_block4_pool_layer_call_and_return_conditional_losses_202378

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������		�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_block3_conv2_layer_call_fn_202247

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_1999622
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
�
-__inference_block5_conv2_layer_call_fn_202407

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_2000762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������		�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������		�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
H__inference_block2_conv1_layer_call_and_return_conditional_losses_199905

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������KK�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������KK�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������KK�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������KK@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������KK@
 
_user_specified_nameinputs
�
�
-__inference_block3_conv3_layer_call_fn_202267

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������%%�*$
_read_only_resource_inputs
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_1999792
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
H
,__inference_block3_pool_layer_call_fn_202283

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_1997902
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
U
9__inference_global_average_pooling2d_layer_call_fn_202034

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *]
fXRV
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_2007192
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_block3_conv3_layer_call_and_return_conditional_losses_199979

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������%%�2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������%%�2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������%%�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_201488

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_2010492
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*h
_input_shapesW
U:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_block4_conv2_layer_call_and_return_conditional_losses_200019

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_block3_pool_layer_call_fn_202288

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *6
config_proto&$

CPU

GPU2*0,1,2,3J 8� *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_1999892
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������%%�:X T
0
_output_shapes
:���������%%�
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
vgg16_input>
serving_default_vgg16_input:0�����������9
dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
regularization_losses
	variables
trainable_variables
		keras_api


signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
regularization_losses
	variables
 trainable_variables
!	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_network
�
"regularization_losses
#	variables
$trainable_variables
%	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&regularization_losses
'	variables
(trainable_variables
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
{
0iter

1beta_1

2beta_2
	3decay
4learning_rate*m�+m�*v�+v�"
	optimizer
 "
trackable_list_wrapper
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
*26
+27"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
�
regularization_losses
	variables
Onon_trainable_variables
Player_metrics
Qlayer_regularization_losses

Rlayers
Smetrics
trainable_variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
"
_tf_keras_input_layer
�

5kernel
6bias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

7kernel
8bias
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
\regularization_losses
]	variables
^trainable_variables
_	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

9kernel
:bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

;kernel
<bias
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

=kernel
>bias
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

?kernel
@bias
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Akernel
Bbias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
xregularization_losses
y	variables
ztrainable_variables
{	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ckernel
Dbias
|regularization_losses
}	variables
~trainable_variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ekernel
Fbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Gkernel
Hbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ikernel
Jbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Kkernel
Lbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Mkernel
Nbias
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�regularization_losses
�	variables
�trainable_variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25"
trackable_list_wrapper
 "
trackable_list_wrapper
�
regularization_losses
	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
 trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
"regularization_losses
#	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
$trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
&regularization_losses
'	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
(trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	� 2dense/kernel
: 2
dense/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
�
,regularization_losses
-	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
.trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	  (2	Adam/iter
:  (2Adam/beta_1
:  (2Adam/beta_2
:  (2
Adam/decay
:  (2Adam/learning_rate
/:-@ 2block1_conv1/kernel
!:@ 2block1_conv1/bias
/:-@@ 2block1_conv2/kernel
!:@ 2block1_conv2/bias
0:.@� 2block2_conv1/kernel
": � 2block2_conv1/bias
1:/�� 2block2_conv2/kernel
": � 2block2_conv2/bias
1:/�� 2block3_conv1/kernel
": � 2block3_conv1/bias
1:/�� 2block3_conv2/kernel
": � 2block3_conv2/bias
1:/�� 2block3_conv3/kernel
": � 2block3_conv3/bias
1:/�� 2block4_conv1/kernel
": � 2block4_conv1/bias
1:/�� 2block4_conv2/kernel
": � 2block4_conv2/bias
1:/�� 2block4_conv3/kernel
": � 2block4_conv3/bias
1:/�� 2block5_conv1/kernel
": � 2block5_conv1/bias
1:/�� 2block5_conv2/kernel
": � 2block5_conv2/bias
1:/�� 2block5_conv3/kernel
": � 2block5_conv3/bias
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tregularization_losses
U	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
Vtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xregularization_losses
Y	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
Ztrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
\regularization_losses
]	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
^trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`regularization_losses
a	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
btrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
dregularization_losses
e	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
ftrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
hregularization_losses
i	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
jtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
lregularization_losses
m	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
ntrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
pregularization_losses
q	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
rtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
tregularization_losses
u	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
vtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
xregularization_losses
y	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
ztrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
|regularization_losses
}	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
~trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�regularization_losses
�	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
�layers
�metrics
�trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
50
61
72
83
94
:5
;6
<7
=8
>9
?10
@11
A12
B13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
.
50
61"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
&:$	� 2Adam/dense/kernel/m
: 2Adam/dense/bias/m
&:$	� 2Adam/dense/kernel/v
: 2Adam/dense/bias/v
�2�
+__inference_sequential_layer_call_fn_200884
+__inference_sequential_layer_call_fn_201427
+__inference_sequential_layer_call_fn_201488
+__inference_sequential_layer_call_fn_201169�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_199737vgg16_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_sequential_layer_call_and_return_conditional_losses_201598
F__inference_sequential_layer_call_and_return_conditional_losses_201715
F__inference_sequential_layer_call_and_return_conditional_losses_201233
F__inference_sequential_layer_call_and_return_conditional_losses_201297�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_vgg16_layer_call_fn_200161
&__inference_vgg16_layer_call_fn_201772
&__inference_vgg16_layer_call_fn_201829
&__inference_vgg16_layer_call_fn_200561�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_vgg16_layer_call_and_return_conditional_losses_201929
A__inference_vgg16_layer_call_and_return_conditional_losses_202029
A__inference_vgg16_layer_call_and_return_conditional_losses_200635
A__inference_vgg16_layer_call_and_return_conditional_losses_200709�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
9__inference_global_average_pooling2d_layer_call_fn_202034
9__inference_global_average_pooling2d_layer_call_fn_202039�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_202045
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_202051�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dropout_layer_call_fn_202056
(__inference_dropout_layer_call_fn_202061�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_dropout_layer_call_and_return_conditional_losses_202066
C__inference_dropout_layer_call_and_return_conditional_losses_202078�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_dense_layer_call_fn_202087�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_layer_call_and_return_conditional_losses_202098�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_201366vgg16_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block1_conv1_layer_call_fn_202107�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block1_conv1_layer_call_and_return_conditional_losses_202118�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block1_conv2_layer_call_fn_202127�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block1_conv2_layer_call_and_return_conditional_losses_202138�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_block1_pool_layer_call_fn_202143
,__inference_block1_pool_layer_call_fn_202148�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_block1_pool_layer_call_and_return_conditional_losses_202153
G__inference_block1_pool_layer_call_and_return_conditional_losses_202158�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block2_conv1_layer_call_fn_202167�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block2_conv1_layer_call_and_return_conditional_losses_202178�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block2_conv2_layer_call_fn_202187�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block2_conv2_layer_call_and_return_conditional_losses_202198�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_block2_pool_layer_call_fn_202203
,__inference_block2_pool_layer_call_fn_202208�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_block2_pool_layer_call_and_return_conditional_losses_202213
G__inference_block2_pool_layer_call_and_return_conditional_losses_202218�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block3_conv1_layer_call_fn_202227�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block3_conv1_layer_call_and_return_conditional_losses_202238�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block3_conv2_layer_call_fn_202247�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block3_conv2_layer_call_and_return_conditional_losses_202258�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block3_conv3_layer_call_fn_202267�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block3_conv3_layer_call_and_return_conditional_losses_202278�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_block3_pool_layer_call_fn_202283
,__inference_block3_pool_layer_call_fn_202288�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_block3_pool_layer_call_and_return_conditional_losses_202293
G__inference_block3_pool_layer_call_and_return_conditional_losses_202298�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block4_conv1_layer_call_fn_202307�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block4_conv1_layer_call_and_return_conditional_losses_202318�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block4_conv2_layer_call_fn_202327�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block4_conv2_layer_call_and_return_conditional_losses_202338�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block4_conv3_layer_call_fn_202347�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block4_conv3_layer_call_and_return_conditional_losses_202358�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_block4_pool_layer_call_fn_202363
,__inference_block4_pool_layer_call_fn_202368�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_block4_pool_layer_call_and_return_conditional_losses_202373
G__inference_block4_pool_layer_call_and_return_conditional_losses_202378�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block5_conv1_layer_call_fn_202387�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block5_conv1_layer_call_and_return_conditional_losses_202398�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block5_conv2_layer_call_fn_202407�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block5_conv2_layer_call_and_return_conditional_losses_202418�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_block5_conv3_layer_call_fn_202427�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_block5_conv3_layer_call_and_return_conditional_losses_202438�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_block5_pool_layer_call_fn_202443
,__inference_block5_pool_layer_call_fn_202448�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_block5_pool_layer_call_and_return_conditional_losses_202453
G__inference_block5_pool_layer_call_and_return_conditional_losses_202458�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_199737�56789:;<=>?@ABCDEFGHIJKLMN*+>�;
4�1
/�,
vgg16_input�����������
� "-�*
(
dense�
dense����������
H__inference_block1_conv1_layer_call_and_return_conditional_losses_202118p569�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������@
� �
-__inference_block1_conv1_layer_call_fn_202107c569�6
/�,
*�'
inputs�����������
� ""������������@�
H__inference_block1_conv2_layer_call_and_return_conditional_losses_202138p789�6
/�,
*�'
inputs�����������@
� "/�,
%�"
0�����������@
� �
-__inference_block1_conv2_layer_call_fn_202127c789�6
/�,
*�'
inputs�����������@
� ""������������@�
G__inference_block1_pool_layer_call_and_return_conditional_losses_202153�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
G__inference_block1_pool_layer_call_and_return_conditional_losses_202158j9�6
/�,
*�'
inputs�����������@
� "-�*
#� 
0���������KK@
� �
,__inference_block1_pool_layer_call_fn_202143�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
,__inference_block1_pool_layer_call_fn_202148]9�6
/�,
*�'
inputs�����������@
� " ����������KK@�
H__inference_block2_conv1_layer_call_and_return_conditional_losses_202178m9:7�4
-�*
(�%
inputs���������KK@
� ".�+
$�!
0���������KK�
� �
-__inference_block2_conv1_layer_call_fn_202167`9:7�4
-�*
(�%
inputs���������KK@
� "!����������KK��
H__inference_block2_conv2_layer_call_and_return_conditional_losses_202198n;<8�5
.�+
)�&
inputs���������KK�
� ".�+
$�!
0���������KK�
� �
-__inference_block2_conv2_layer_call_fn_202187a;<8�5
.�+
)�&
inputs���������KK�
� "!����������KK��
G__inference_block2_pool_layer_call_and_return_conditional_losses_202213�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
G__inference_block2_pool_layer_call_and_return_conditional_losses_202218j8�5
.�+
)�&
inputs���������KK�
� ".�+
$�!
0���������%%�
� �
,__inference_block2_pool_layer_call_fn_202203�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
,__inference_block2_pool_layer_call_fn_202208]8�5
.�+
)�&
inputs���������KK�
� "!����������%%��
H__inference_block3_conv1_layer_call_and_return_conditional_losses_202238n=>8�5
.�+
)�&
inputs���������%%�
� ".�+
$�!
0���������%%�
� �
-__inference_block3_conv1_layer_call_fn_202227a=>8�5
.�+
)�&
inputs���������%%�
� "!����������%%��
H__inference_block3_conv2_layer_call_and_return_conditional_losses_202258n?@8�5
.�+
)�&
inputs���������%%�
� ".�+
$�!
0���������%%�
� �
-__inference_block3_conv2_layer_call_fn_202247a?@8�5
.�+
)�&
inputs���������%%�
� "!����������%%��
H__inference_block3_conv3_layer_call_and_return_conditional_losses_202278nAB8�5
.�+
)�&
inputs���������%%�
� ".�+
$�!
0���������%%�
� �
-__inference_block3_conv3_layer_call_fn_202267aAB8�5
.�+
)�&
inputs���������%%�
� "!����������%%��
G__inference_block3_pool_layer_call_and_return_conditional_losses_202293�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
G__inference_block3_pool_layer_call_and_return_conditional_losses_202298j8�5
.�+
)�&
inputs���������%%�
� ".�+
$�!
0����������
� �
,__inference_block3_pool_layer_call_fn_202283�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
,__inference_block3_pool_layer_call_fn_202288]8�5
.�+
)�&
inputs���������%%�
� "!������������
H__inference_block4_conv1_layer_call_and_return_conditional_losses_202318nCD8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
-__inference_block4_conv1_layer_call_fn_202307aCD8�5
.�+
)�&
inputs����������
� "!������������
H__inference_block4_conv2_layer_call_and_return_conditional_losses_202338nEF8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
-__inference_block4_conv2_layer_call_fn_202327aEF8�5
.�+
)�&
inputs����������
� "!������������
H__inference_block4_conv3_layer_call_and_return_conditional_losses_202358nGH8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
-__inference_block4_conv3_layer_call_fn_202347aGH8�5
.�+
)�&
inputs����������
� "!������������
G__inference_block4_pool_layer_call_and_return_conditional_losses_202373�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
G__inference_block4_pool_layer_call_and_return_conditional_losses_202378j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0���������		�
� �
,__inference_block4_pool_layer_call_fn_202363�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
,__inference_block4_pool_layer_call_fn_202368]8�5
.�+
)�&
inputs����������
� "!����������		��
H__inference_block5_conv1_layer_call_and_return_conditional_losses_202398nIJ8�5
.�+
)�&
inputs���������		�
� ".�+
$�!
0���������		�
� �
-__inference_block5_conv1_layer_call_fn_202387aIJ8�5
.�+
)�&
inputs���������		�
� "!����������		��
H__inference_block5_conv2_layer_call_and_return_conditional_losses_202418nKL8�5
.�+
)�&
inputs���������		�
� ".�+
$�!
0���������		�
� �
-__inference_block5_conv2_layer_call_fn_202407aKL8�5
.�+
)�&
inputs���������		�
� "!����������		��
H__inference_block5_conv3_layer_call_and_return_conditional_losses_202438nMN8�5
.�+
)�&
inputs���������		�
� ".�+
$�!
0���������		�
� �
-__inference_block5_conv3_layer_call_fn_202427aMN8�5
.�+
)�&
inputs���������		�
� "!����������		��
G__inference_block5_pool_layer_call_and_return_conditional_losses_202453�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
G__inference_block5_pool_layer_call_and_return_conditional_losses_202458j8�5
.�+
)�&
inputs���������		�
� ".�+
$�!
0����������
� �
,__inference_block5_pool_layer_call_fn_202443�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
,__inference_block5_pool_layer_call_fn_202448]8�5
.�+
)�&
inputs���������		�
� "!������������
A__inference_dense_layer_call_and_return_conditional_losses_202098]*+0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� z
&__inference_dense_layer_call_fn_202087P*+0�-
&�#
!�
inputs����������
� "�����������
C__inference_dropout_layer_call_and_return_conditional_losses_202066^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
C__inference_dropout_layer_call_and_return_conditional_losses_202078^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� }
(__inference_dropout_layer_call_fn_202056Q4�1
*�'
!�
inputs����������
p 
� "�����������}
(__inference_dropout_layer_call_fn_202061Q4�1
*�'
!�
inputs����������
p
� "������������
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_202045�R�O
H�E
C�@
inputs4������������������������������������
� ".�+
$�!
0������������������
� �
T__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_202051b8�5
.�+
)�&
inputs����������
� "&�#
�
0����������
� �
9__inference_global_average_pooling2d_layer_call_fn_202034wR�O
H�E
C�@
inputs4������������������������������������
� "!��������������������
9__inference_global_average_pooling2d_layer_call_fn_202039U8�5
.�+
)�&
inputs����������
� "������������
F__inference_sequential_layer_call_and_return_conditional_losses_201233�56789:;<=>?@ABCDEFGHIJKLMN*+F�C
<�9
/�,
vgg16_input�����������
p 

 
� "%�"
�
0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_201297�56789:;<=>?@ABCDEFGHIJKLMN*+F�C
<�9
/�,
vgg16_input�����������
p

 
� "%�"
�
0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_201598�56789:;<=>?@ABCDEFGHIJKLMN*+A�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_201715�56789:;<=>?@ABCDEFGHIJKLMN*+A�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
+__inference_sequential_layer_call_fn_200884�56789:;<=>?@ABCDEFGHIJKLMN*+F�C
<�9
/�,
vgg16_input�����������
p 

 
� "�����������
+__inference_sequential_layer_call_fn_201169�56789:;<=>?@ABCDEFGHIJKLMN*+F�C
<�9
/�,
vgg16_input�����������
p

 
� "�����������
+__inference_sequential_layer_call_fn_201427{56789:;<=>?@ABCDEFGHIJKLMN*+A�>
7�4
*�'
inputs�����������
p 

 
� "�����������
+__inference_sequential_layer_call_fn_201488{56789:;<=>?@ABCDEFGHIJKLMN*+A�>
7�4
*�'
inputs�����������
p

 
� "�����������
$__inference_signature_wrapper_201366�56789:;<=>?@ABCDEFGHIJKLMN*+M�J
� 
C�@
>
vgg16_input/�,
vgg16_input�����������"-�*
(
dense�
dense����������
A__inference_vgg16_layer_call_and_return_conditional_losses_200635�56789:;<=>?@ABCDEFGHIJKLMNB�?
8�5
+�(
input_1�����������
p 

 
� ".�+
$�!
0����������
� �
A__inference_vgg16_layer_call_and_return_conditional_losses_200709�56789:;<=>?@ABCDEFGHIJKLMNB�?
8�5
+�(
input_1�����������
p

 
� ".�+
$�!
0����������
� �
A__inference_vgg16_layer_call_and_return_conditional_losses_201929�56789:;<=>?@ABCDEFGHIJKLMNA�>
7�4
*�'
inputs�����������
p 

 
� ".�+
$�!
0����������
� �
A__inference_vgg16_layer_call_and_return_conditional_losses_202029�56789:;<=>?@ABCDEFGHIJKLMNA�>
7�4
*�'
inputs�����������
p

 
� ".�+
$�!
0����������
� �
&__inference_vgg16_layer_call_fn_200161�56789:;<=>?@ABCDEFGHIJKLMNB�?
8�5
+�(
input_1�����������
p 

 
� "!������������
&__inference_vgg16_layer_call_fn_200561�56789:;<=>?@ABCDEFGHIJKLMNB�?
8�5
+�(
input_1�����������
p

 
� "!������������
&__inference_vgg16_layer_call_fn_201772�56789:;<=>?@ABCDEFGHIJKLMNA�>
7�4
*�'
inputs�����������
p 

 
� "!������������
&__inference_vgg16_layer_call_fn_201829�56789:;<=>?@ABCDEFGHIJKLMNA�>
7�4
*�'
inputs�����������
p

 
� "!�����������