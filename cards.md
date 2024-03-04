---
name: Rust Flashcards
---

---

How do you create a new package named `hello_world`?

. . .

```sh
cargo new hello_world
```

---

What's the command to run a package?

. . .

```sh
cargo run
```

---

What is the command to build a project without producing a binary to **check
for errors**?

. . .

```sh
cargo check
```

---

How do we include the input/output functionality from the standard library?

. . .

```rust
use std::io;
```

---

Which command can you use to build documentation provided by all of your
dependencies locally and open it in your browser?

. . .

```sh
cargo doc --open
```

---

How do you create an infinite loop?

. . .

```rust
loop {
  …
}
```

---

How do you exit a loop forcibly?

. . .

`break;`

---

What does the `_` after `Err` mean?

![-](./images/efb3bf9ae195f307e3be5c5cf42ca27ae2eeedbc.jpg)

---

The underscore, `_`, is a catchall value; in this example,
we're saying we want to match all `Err` values,
no matter what information they have inside them.

---

What's the command to tell the program to go to the next iteration of the loop?

. . .

```rust
continue;
```

---

How do you make a new variable **shadow** the first?

. . .

You can declare a new variable with the same name as a previous variable.
Rustaceans say that the first variable is shadowed by the second, which means
that the second variable is what the compiler will see when you use the name of
the variable.

---

What is the possible bit range of integers?

. . .

8 to 128 bit

![-](./images/1f087de0acee366a68bf8851816fdb545e486a55.jpg)

---

In this table of integer types, what do the `isize` or `usize` variants (in the
arch row) stand for?

![-](./images/9bbbd659c0fc7f56c3541a720e10de116f1621d8.jpg)

. . .

Architecture. The `isize` and `usize` types depend on the architecture of the
computer your program is running on, which is denoted in the table as "arch":
64 bits if you're on a 64-bit architecture and 32 bits if you're on a 32-bit
architecture.

---

What's the integer type variant that gets the size of the bits of the
architecture the program is running on?

(64 bits if you're on a 64-bit architecture and 32 bits if you're on a 32-bit
architecture)

---

The variant with 'size' after its integer type (signed or unsigned,
respectively).

![-](./images/6820481a966841c65c5de270c6cd7cc054a19ddc.jpg)

---

How do you create a signed integer with 128 bits named `hello_world`?

. . .

`let hello_world: i128;`

---

How do you create an unsigned integer with 128 bits named `hello_world`?

. . .

`let hello_world: u128;`

---

What is the range of numbers that can be stored using signed two's complement
representation (as a function of n)?

. . .

Each signed variant can store numbers from \([-(2^{n-1})\), \(2^{n-1}-1]\).

---

What is the range of numbers that can be stored using unsigned two's complement
representation (as a function of n)?

. . .

Each unsigned variant can store numbers from \(0\) to \(2^{n}-1\).

---

What is the range of number that an i8 signed integer can store?

. . .

It can store numbers from \(-128\) to \(127\).

---

What is the range of number that a u8 UNsigned integer can store?

. . .

It can store numbers from \(0\) to \(255\).

---

How to write a **number literal** that is an 8 bit unsigned integer with the
value 57?

. . .

Simply by adding to the literal a type suffix, like so: 57u8

---

How do you write a hexadecimal literal?

. . .

`0` and the number seperated by `x`


For example: `0xff`"

---

How can you make decimal literals more readable?

. . .

Using `_` as the thousands seperator.

For example: `let x = 28_222;`"

---

How do you make an octal base number literal?

. . .

`0` and the number seperated by an `o`

---

How do you write a binary literal?

. . .

`0` and the number seperated by `b`


e.g. `assert_eq!(0b101, 5)`"

---

What's the only integer type suitable for Byte representation?

. . .

`u8`



e.g. `b'A'`"

---

How do you represent a Byte literal?

. . .

`b`, and then its ASCII char (0-255) enclosed by single quotes, like so: `b'A'`

---

What is the primary situation in which you'd use isize or usize?

![-](./images/07cd5e75d1ab3d1d349cc0ffa97b7a730e10143a.jpg)

---

When indexing some sort of collection

---

How to write an unsigned floating point literal?

. . .

You can't. All floating-point types are signed.

---

What's the default floating point type?

. . .

`f64` (since it's roughly the same speed as `f32` but is capable of more
precision)

![-](./images/2feddc1f5088052ea6315707d046d9b9b2351485.jpg)

---

What's the precision degree of `f64`?

. . .

It's double precision (`f32` is single precision and both are represented
according to the IEEE-754 standard)

---

How do you define a boolean and how much space in memory does it occupy?

. . .

Booleans are one byte in size. The Boolean type in Rust is specified using
bool.

![-](./images/5697594b08cc652f7fd971285250c489227b9e41.jpg)

---

How much space in memory does a char occupy?

. . .

Rust's char type is **four bytes in size** and represents a Unicode Scalar
Value, which means it can represent a lot more than just ASCII.

![-](./images/f1099fb23314ee6756664b8f12c7c37ec473caa4.jpg)

---

What's the difference between the way we define strings and the way we define
char literals?

. . .

We specify char literals with **single quotes**, as opposed to string literals,
which use **double quotes**.

![-](./images/f1099fb23314ee6756664b8f12c7c37ec473caa4.jpg)

---

What are compound types?

. . .

Compound types can group multiple values into one type

---

What primitive compound types does Rust have?

. . .

Rust has 2 primitive compound types:

- Tuples:
    ![-](./images/c034b421e578b69e606d6a5dde7d1b604250012d.jpg)
- Arrays:
    ![-](./images/7f81b67edb172bc450029ac2a1c1a51bb35435d3.jpg)

---

How can we create a tuple?

. . .

We create a tuple by writing a comma-separated list of values inside
parentheses.

![-](./images/c034b421e578b69e606d6a5dde7d1b604250012d.jpg)

---

How can we get the individual values out of a tuple? (2 ways)

. . .

- Destructuring via pattern matching: \
    ![-](./images/766cbde8017da317498c58591b86eb8d80e103b4.jpg)
- Dot notation with indexes: \
    ![-](./images/628084df83fb613744bd85a1d5a6820860c07347.jpg)

---

What's the name of a tuple without any value? when is does it come up?

. . .

The tuple without any values has a special name, **unit**.
This value and its corresponding type are both written `()`
and represent an empty value or an empty return type.

Expressions implicitly return the unit value if they don't return any other
value.

---

What can we say about the size of arrays?

. . .

Unlike arrays in some other languages, arrays in Rust have a fixed length.
![-](./images/ccdf3aabd4a92feea2e946c11e7061f9ce543588.jpg)

---

Name 2 good uses of arrays

---


- Arrays are useful when you want your data allocated **on the stack** rather
than the heap.
- When you want to ensure you always have a **fixed number of elements**. \

---

What can we say about arrays in relation to vectors?

. . .

Array isn't as flexible as the vector type, though. A vector is a similar
collection type provided by the standard library that **is** allowed to **grow
or shrink in size**. If you're unsure whether to use an array or a vector,
chances are you should use a vector.

---

2 ways to initialize an array

---


- Define each element individually \
    ![-](./images/2508ec836d264521bbe082c185bf55ea23e860a4.jpg)


- Define them all at once \
    ![-](./images/70e104c6ed1edd4a9fde725677b5db8a2990d68b.jpg)

    Which is same as: \
    ![-](./images/1f8bf1495cd27676c115ab5af42c52e5cffaf613.jpg)




---

What's the difference between statements and expressions?

. . .

Statements are instructions that perform some action and do not return a value.
Expressions evaluate to a resulting value.

---

What's the difference between arguments and parameters?

. . .

Parameters are the variable definitions in the top area of the function,
arguments are the **concrete values**

---

Statement or expression?

Creating a variable and assigning a value to it with the let keyword is a
statement

![-](./images/8edfa0e177b3645d1394c184580c502b840bbcc6.jpg)

. . .

Statement

---

Statement or expression?

function definitions

. . .

Statement

![-](./images/8edfa0e177b3645d1394c184580c502b840bbcc6.jpg)

---

Statement or expression?

Calling a function

. . .

Expression

---

Statement or expression?

Calling a macro

. . .

Expression

---

Statement or expression?

A new scope block created with curly brackets

. . .

Expression

For example,
![-](./images/400a089672ea767779a569e7f9e1250f37817c48.jpg)
`y = 4`, in this case

---

![-](./images/400a089672ea767779a569e7f9e1250f37817c48.jpg)

Why doesn't `x + 1` have a semicolon at the end?

. . .

It is an expression, rather than a statement.
Expressions do not include ending semicolons.
If you add a semicolon to the end of an expression, you turn it
into a statement, and it will then not return a value.

---

How do we declare a function's type?

. . .

With an arrow:

![-](./images/504380625a0e724ee5fc56a65ae90568a2d84d27.jpg)

---

Statement or expression?

```rust
if … { … } else { … }
```

---

Expression.

Because `if` is an expression, we can use it on the right side of a `let`
statement
to assign the outcome to a variable:

![-](./images/fb301e90c3d8dfdefd7a419c4d7dc36d0a2288df.jpg)

---

What does `continue;` in a loop do?

. . .

It makes the program skip over any remaining code in this iteration of the loop
and go to the next iteration.

---

Inside a loop, how can you return a value OUT of the loop
so you can use it after the `break;` expression
you use to stop the loop?

. . .

One can simply add the desired expression to be returned after the break:

![-](./images/993e9472de710b52ae12d635c08583ca3824f7f3.jpg)

---

If you have loops within loops, how can you break / continue a specific loop
instead of the innermost loop?

. . .

With **loop labels**. Loop labels must begin with a single quote.

![-](./images/7beb53e4ce4b42918d28f203ad6c6dd50c1b3918.jpg)

---

We want to use `while` to loop the program three times,
counting down each time, and then, after the loop,
print a message and exit.
Fill the black blank.

![-](./images/288fccc465e61493209d78b32fd3b3bad802f555.jpg)

---

`while number != 0`

![-](./images/9fec584019901ba8387c05e2e64e8b3acae6e50b.jpg)

---

![-](./images/33fd080ce0f6b411cc1495662019c729ec3536c0.jpg)

Looping through a collection like this is a bad idea. Give 2 reasons why.

---


- It's error prone;

- It's slow (due to bound checking);


<h4>Explanations:</h4>
<p>It's error prone because it could cause the program to panic if the index
value or test condition are incorrect.
  For example, if you changed the definition of the a array to have four
elements but forgot to update the condition to while `index < 4`, the code
would panic.
</p>
<p>It's slow because the compiler adds runtime code to perform the conditional
check of whether the index is within the bounds of the array on every iteration
through the loop.
</p>"

---

![-](./images/bdab5fe369a7cab4479ef0341204c4f00b710fbf.jpg)

What is a better and more concise alternative to loop over the array?

. . .

To use a for loop:

![-](./images/afe4561abcfa460895385349612dd14ed7d57ea2.jpg)

The safety and conciseness of for loops make them the most commonly used loop
construct in Rust.

---

Even in situations in which you want to run some code a certain number of times,
as in the countdown example that used a while loop in Listing 3-3,
most Rustaceans would use a `for` loop.

![-](./images/8bae33468df9ef298055f2235d048bd68e7d179b.jpg)

How would you do this with a `for` loop instead?

. . .

Using a **Range**, provided by the standard library:

![-](./images/86012344f98a1c93cf85ece189fdf69ea3811732.jpg)

---

What are the 3 rules of ownership?

. . .


- Each value in Rust has an owner.
- There can only be one owner at a time.
- When the owner goes out of scope, the value will be dropped.

---

Why is a string literal not the best fit for some things?

. . .

String literals are convenient,
but they aren't suitable for every situation in which we may want to use text. \

- One reason is that they're immutable.
- Another is that not every string value can be known when we write our code.

For example, what if we want to take user input and store it?
For these situations, Rust has a second string type, `String`.

---

What is the difference between the `String` type and the `string` literal?

. . .

The `String` type manages data allocated **on the heap** and as such is able to
store an amount of text that is **unknown to us** at compile time.

![-](./images/e6ad487481aac45a3f70e2d8b2792db502cab151.jpg)

---

With a String type, besides the contents of the string, which data are created
and where are they stored?

. . .

A String is made up of three parts (shown on the left): \

- Pointer to the memory that holds the contents of the string
- Length
- Capacity

This group of data is stored on the stack.
On the right is the memory on the heap that holds the contents.

![-](./images/1be48e7d2e6765b3e337f4d0738ed7b4944d9f70.jpg)

---

![-](./images/13a7fcb16df9f807a863bbc382d40c50e4b3d87d.jpg)

What happens in terms of the heap and stack
when we assign `s1` to `s2` in line 2?

. . .

The String data is copied, meaning we copy: \

- Pointer
- Length
- Capacity

that are on the stack.

We **do not** copy the data on the heap
that the pointer refers to.

![-](./images/612c87d43da48b3d61bfeb8b21ff9a536d906f18.jpg)

---

![-](./images/c52878be7a66f12769556f8726aad1d57a205c91.jpg)

What happens to `s1` in this case?

. . .

Compile time error.
In this example, we would say that `s1` was moved into `s2`,
as Rust considers `s1` as no longer valid.

Because Rust invalidates the first variable, instead of calling it a shallow
copy,
it's known as a move.
So what actually happens is shown here:

![-](./images/2ba912cafdb15ec5acfd9a364f8e30f2ae585505.jpg)

---

![-](./images/f4c7309d1d0ff4fefcdcb7251d5ab7d1935a496e.jpg)

What could be a red flag?

. . .

This works just fine and explicitly produces the behavior where **the heap data
does get copied**.

And yet, when you see a call to clone, you know that some arbitrary code is
being executed and **that code may be expensive**. It's a visual indicator that
something different is going on.

---

How do you reference an object?

. . .

With an ampersand:

![-](./images/a1aac63d055f4547067658c361e8d1d184d9b618.jpg)

These ampersands represent references,
and they allow you to refer to some value without taking ownership of it.

---

What is one guarantee that a reference has and a conventional pointer doesn't?

. . .

Unlike a pointer, a reference is guaranteed to point to a valid value of a
particular type for the life of that reference.
![-](./images/88f068410bc39554d0de787627d3af214bafe9c3.jpg)

---

How do we call the action of **creating a reference**?

. . .

Borrowing

---

What is not possible **by default** when borrowing?

. . .

Mutating.

Just as variables are immutable by default, so are references. We're not
allowed to modify something we have a reference to.

---

![-](./images/a7e1c13e68f3ad062ce2b5640bef96b49102ef8d.jpg)

How can you make this reference mutable?

. . .

Put `&mut s` as parameter instead of `&s` and `&mut String` as parameter type
instead of `&String`.

![-](./images/c70640d0736a03dfc1012149e739d5df2e6f8594.jpg)

---

What's the restrictions that mutable references have?

. . .

If you have a mutable reference to a value, you can have no other (mutable or
otherwise) references to that value.

This will fail, for example:
![-](./images/835f8a56dec9d3dbd8dcd6529f6107559b206972.jpg)

This as well:
![-](./images/378ce511de367d3db5819bb6b8cbde93bc919bb5.jpg)

---

What's the benefit of the restriction preventing multiple mutable references to
the same data at the same time?

. . .

The benefit of having this restriction is that Rust can **prevent data races at
compile time**.

It allows for mutation but in a very controlled fashion. It's something that
new Rustaceans struggle with, because most languages let you mutate whenever
you’d like.

---

What are the 3 preconditions for a data race to occur?

. . .

A data race happens when these three behaviors occur:

- Two or more pointers access the same data at the same time.
- At least one of the pointers is being used to write to the data.
- There's no mechanism being used to synchronize access to the data.(Note: \
a
data race is similar to a race condition) \

---

What's a workaround we can use to allow multiple mutable references to the same
data?

. . .

We can use curly brackets to create a new scope, allowing for multiple mutable
references, jus not simultaneous ones:

![-](./images/7f4d913609f50da5a7f952672142ac3ec4791ede.jpg)

---

![-](./images/c89eaaceb9d0c21ce146bd40ec676e30811461a8.jpg)

What's going to happen with this code?

. . .

Compile-time error!

Since Rust enforces a similar rule as the restriction preventing multiple
mutable references to the same data at the same time for combining mutable and
immutable references, this code results in an error:

![-](./images/ee0b7243a14c26cab1e77f74e5d117b39b790ff4.jpg)

---

Why are mutable references not allowed to co exist with other references while
multiple immutable references are allowed?

. . .

Because users of an immutable reference don't expect the value to suddenly
change out from under them! However, multiple immutable references are allowed
because no one who is just reading the data has the ability to affect anyone
else's reading of the data.

---

![-](./images/a47845bbf6ff26dca0d2b54180cf6ddba3f4e7a6.jpg)

Why will this not trigger compile time errors involving mutable & immutable
rules?

. . .

Because a reference's scope starts from where it is introduced and continues
**through the last time that reference is used**. Therefore, this code will
compile because the last usage of the immutable references, the println!,
occurs before the mutable reference is introduced. These scopes don't overlap,
so this code is allowed

![-](./images/747b99ebf56cda200debd8da9838be356ee2ac4d.jpg)

(See also: Non-Lexical Lifetimes or NLL)"

---

What's a "dangling pointer"?

. . .

It's a pointer **pointing to an invalid value.**

In other words: it's a pointer that references a location in memory that may
have been given to someone else, by freeing some memory while preserving a
pointer to that memory.

---

What guarantee do we have regarding "dangling pointers"?

. . .

In Rust, the compiler guarantees that references will never be dangling
references: if you have a reference to some data, the compiler will ensure that
the data will not go out of scope before the reference to the data does.

This will not compile:
![-](./images/dcca3d2ed4058f9d4e74778e598c609b5d46da6f.jpg)

---

What's the problem with this code?

![-](./images/90213271b4a9cec6a279ec0655f399be6a5540a4.jpg)

What could be a solution?

. . .

![-](./images/1b633820a994d5c5580b5e3f91d3d526a707a497.jpg)

Because s is created inside dangle, when the code of dangle is finished, s will
be **deallocated**. But we tried to return a reference to it. That means this
reference would be pointing to an invalid String. That's no good! Rust won't
let us do this. The solution here is to return the String directly:

![-](./images/02ce4fa7bdb11a240912dbc09a401f2edd07da6b.jpg)

This works without any problems. Ownership is moved out, and nothing is
deallocated.

---

What are the 2 rules of references that are enforced by the compiler?

. . .


- At any given time, you can have either one mutable reference or any number of
immutable references.
- References must always be valid (and not 'dangling'). \

---

What's the Slice type?

. . .

Slices let you reference a **contiguous sequence of elements in a collection**
rather than the whole collection. \

---

What are the Slice type's ownership properties?

. . .

A slice is a kind of reference, so it does not have ownership.

---

What's a string Slice? What does it look like in action? (on a string named s)

---

A string slice is **a reference to part of a String**, and it looks like this:

![-](./images/1f0166be3b63ecb8addb8a327f8138dcd9d8631b.jpg)

Rather than a reference to the entire String, hello is a reference to a portion
of the String, specified in the extra [0..5] bit.

![-](./images/21b5d08fbed6e1b0268cc7e578185f829711846d.jpg)

---

How do we create slices?

![-](./images/14832e393d9139f7266d12d75253b6000e53a3fa.jpg)

---

We create slices using a range within brackets by specifying
**[starting_index..ending_index]**, where starting_index is the first position
in the slice and ending_index is one more than the last position in the slice.

![-](./images/e25cabb6ece6e4e7ac9089648291ae17cec04239.jpg)

---

![-](./images/f00e2157785aafc50a0542ce1da2077cd781e4ea.jpg)

What can you say about those 2 values?

. . .

With Rust's .. range syntax, if you want to start at index zero, you can drop
the value before the two periods.

In other words, **these are equal**.

---

![-](./images/0b39e6178faa9c7cb509e2f305943f5eb85352aa.jpg)

What can you say about those 2 values?

. . .

With Rust's .. range syntax, if your slice includes the last byte of the
String, you can drop the trailing number.

In other words, **these are equivalent**.

---

![-](./images/6d19b64a397ef56601c6867baeae2b7b2a1c661b.jpg)

What can you say about those 2 values?

. . .

With Rust's .. range syntax, you can drop both values to take a slice of **the
entire string**.

In other words, **these are equal**.

---

What's a possible error inducing operation on string slice range indices?

. . .

String slice range indices must occur at valid UTF-8 character boundaries. If
you attempt to create a string slice in the middle of a multibyte character,
your program will exit with an error.

![-](./images/b14963717acd773eb5ac4d16fc076c836c775ad2.jpg)

---

![-](./images/5915afcd93080326502dfd07b205b1abe4fc41f8.jpg)

What's going to happen with this code?

. . .

Compile time error.

Explanation: \
If we have an immutable reference to something, we cannot also
take a mutable reference. Because clear needs to truncate the String, it needs
to get a mutable reference. The println! after the call to clear uses the
reference in word, so the immutable reference must still be active at that
point. Rust disallows the mutable reference in clear and the immutable
reference in word from existing at the same time, and compilation fails. Not
only has Rust made our API easier to use, but it has also eliminated an entire
class of errors at compile time!

---

![-](./images/97af1df9c571f457e97994ddfbb31e2508f74335.jpg)

How can we improve upon this function signature?

. . .

Knowing that you can take slices of literals and String values leads us to an
improvement on the function signature:

![-](./images/f21cccc416aa594a4594c127ede153e499be7d23.jpg)

That's how a more experienced Rustacean would write the signature shown instead
because it allows us to use the same function first_word on both &String values
and &str values.

---

![-](./images/d01826ebcfdb579bf188c629746bcb15b137a695.jpg)
&my_string[..]

What is equal to that expression?

. . .

&my_string

![-](./images/48aa5f8cd0334b702a834b24b1c28d3948043e7a.jpg)

---

How do you output assembly?

. . .

You can use Cargo's `cargo rustc` command to send arguments to rustc directly:

![-](./images/dccb4b698612594ff5420cbab5d725f3e44d3239.jpg)

---

How do you output OPTIMIZED assembly?

. . .

You can use Cargo's `cargo rustc` command to send arguments to rustc directly,
for optimized assembly:

![-](./images/81ac42340d47d7e0aade9716f06c775c83e6c96b.jpg)

---

What can you do if you see multiple `<crate_name>-<hash>-<hash>.rcgu.s` files
instead of a single `<crate_name>-<hash>.s` file when outputting assembly?

. . .

Disable incremental compilation by setting the environment variable
`CARGO_INCREMENTAL=0`

---

What can you do if you just want to look at the assembly output instead of
saving it, e.g. to judge if it's well-optimized?

. . .

An easy option is to check out
<a href="https://rust.godbolt.org/">rust.godbolt.org</a>

(Don't forget to add `-O` to the compiler options box.)"

---

![-](./images/d0aee72e6b447c88c319ab29ff22abbe8c004704.jpg)

What type does this slice have?

. . .

This slice has the type `&[i32]`.

It works the same way as string slices do, by storing a reference to the first
element and a length. You'll use this kind of slice for all sorts of other
collections.

---

How do we use a struct after we've defined it?

![-](./images/0d00df76c5aa7b2628e7fec1554284a908eeb846.jpg)

---

We create an instance by stating the name of the struct and then add curly
brackets containing key: value pairs, where the keys are the names of the
fields and the values are the data we want to store in those fields.

![-](./images/5d6e3f71c085a3fa27520359feb4080f073f8042.jpg)

---

![-](./images/f727aa971639c1d7318d23f377680f1696566754.jpg)

How do we access this user's email address or change its value?

. . .

We use dot notation

![-](./images/f635886c9b4a88adb4aae0447692d36ef3a29df1.jpg)

Note: \
the entire instance must be mutable; Rust doesn't allow us to mark only
certain fields as mutable.

---

![-](./images/148197e01bf982bd8af2c23838e6fbdcbc213abd.jpg)

How can we somewhat shorten this?

. . .

Using **field init shorthand syntax**.

Because the parameter names and the struct field names can sometimes be exactly
the same, we can use the field init shorthand syntax to make it so that it
behaves exactly the same but doesn't have the repetition.

![-](./images/1636d2b440f1236285e11c9d8c2d5d60e4d26385.jpg)

---

![-](./images/69af96045a061251482b06c3ab694d8a96918077.jpg)

How do we shorten all these values in `user2` taken straight from `user1`?

. . .

With 2 dots, a.k.a the **struct update syntax**.

It's often useful to create a new instance of a struct that includes most of
the values from another instance, but changes **some**.

![-](./images/479db060868c446cb622ba03638e2997453e1ef4.jpg)

Notes:

- It's only 2 dots, not 3
- The syntax must come last to specify that any remaining fields should get
their values from the corresponding fields in user1, but we can choose to
specify values for as many fields as we want in any order, regardless of the
order of the fields in the struct's definition.


---

![-](./images/c8653863d612b8cf0e168b5b5545ca74690d897d.jpg)
![-](./images/ab78496f0b4d402dda897e1135d5defce915b0d9.jpg)
![-](./images/5c6079b4ee3ea599164b184a96f083d16d97052f.jpg)

What can we say about user1?

. . .

In this example, ****we can no longer use user1 after creating user2****
because the String in the username field of user1 was moved into user2.

Note that the struct update syntax uses = like an assignment; this is because
it moves the data. If we had given user2 new String values for both email and
username, and thus only used the active and sign_in_count values from user1,
then user1 would still be valid after creating user2.

---

![-](./images/366ab3958e37f70da5601434d6ceb6afaf8f3fbe.jpg)

What are these called?

. . .

These are structs that look similar to tuples, called **tuple structs**.

---

What could tuple structs be useful for?(3 use cases)

---

Tuple structs are useful when:

- You want to give the whole tuple a name
- Make it a **different type** from other tuples
- Naming each field as in a regular struct would be verbose or
redundant.
![-](./images/04a03fe9e5ba7fb620a268aa3728c7915b63dd25.jpg)

Tuple structs have the **added meaning** the struct name provides but don't
have names associated with their fields; rather, they just have the types of
the fields.

---

![-](./images/eab0f3c52205ff5ea34f22ee9051d5067b018264.jpg)

Can `Color` and `Point` here be interchangeable?

. . .

No.
The black and origin values are different types,
because they're instances of different tuple structs.

Each struct you define is its own type, even though the fields within the
struct might have the same types.

---

Which type of structs are destructurable?

. . .

Both structs and tuple structs.

![-](./images/7dc5aa310afead7c381fb21ae63e9dbe696bf7be.jpg)

---

With which type of structs can you use a `.`
followed by the index to access an individual value?

. . .

With both structs and tuple structs.

---

What are unit-like structs?

. . .

They are structs that don't have any fields. These are called unit-like structs
because they behave similarly to `()`.

![-](./images/e45dd109de46c712dcc016199879c292b7932d27.jpg)

Unit-like structs can be useful when you need to implement a trait on some type
but don't have any data that you want to store in the type itself.

---

![-](./images/26102e69976c059c1acf77395a71b32b584b7ef2.jpg)

Why will this not print?

. . .

With structs, Rust doesn't try to guess what we want, and structs don't have a
provided implementation of `Display` to use with `println!` and the `{}`
placeholder.

---

![-](./images/064d480c8c3a294f772f82a74a6e142ea3846a00.jpg)

What does putting the specifier `:?` inside the curly brackets change?

. . .

Putting the specifier `:?` inside the curly brackets tells `println!` we want
to use an output format called `Debug` (instead of the default `Display`).

The `Debug` trait enables us to print our struct in a way that is useful for
developers so we can see its value while we're debugging our code.

---

![-](./images/78b142bf2c5447649952d127e1c621836218060a.jpg)

What's missing for this to print?

. . .

Adding the outer attribute `#[derive(Debug)]` just before the struct
definition.

Rust does include functionality to print out debugging information, but we have
to explicitly opt in to make that functionality available for our struct.

![-](./images/81e82800441e5e53929f8a73c8e1418d98d5b452.jpg)

---

![-](./images/c34ed853e17480891f8fbaf466258f1bfcc8bc11.jpg)
![-](./images/0d44e5f84ecedb06e7d7127934f22315d2aed5e9.jpg)

When we have larger structs, in order to have output that's a bit easier to
read, what can we do?

. . .

We can use `{:#?}` instead of `{:?}` in the `println!` string. In this example,
using the `{:#?}` style will output:

![-](./images/bb742b4aa41c86918cb55c61c3fed77f87e5f257.jpg)

---

What's another way to print out a value using the Debug format besides using
println! with {:?} or {:#?} ?

. . .

Using the `dbg!` macro.

![-](./images/566c4c0acb67024c35acfe07730e92d06d06efdd.jpg)

![-](./images/416f6471ee6e154efd2d440e82cfa2e9b22c2f50.jpg)

---

![-](./images/2728a681900ce490718df89adcf76b91310b83bc.jpg)

How can we slice 2 and 3 out of a?

. . .

![-](./images/b1074e663c3a248245f1800bbe66bbabc8b3bec4.jpg)

---

What's similar between methods and functions?

. . .


- They are declared with the `fn` keyword and a name
- They can have parameters and a return value
- They contain some code that's run when the method is called from somewhere
else


---

What's different between methods and functions?

. . .

Unlike functions, methods are

- Defined within the context of a struct (or an `enum` or a trait object)
- Their first parameter can be self, which represents the instance of the
struct the method is being called on

---

How do we define the function area within the context of Rectangle?

. . .

We start an implementation block for Rectangle. Everything within this impl
block will be associated with the Rectangle type. Then we change the first (and
in this case, only) parameter to be self.

![-](./images/90a3a954a2fa448ea4f25aecd5c12e47be16dc97.jpg)

---

What is `&self` (in method syntax) actually short for?

. . .

The `&self` is actually short for `self: &Self`.

Note: \
We still need to use the `&` in front of the self shorthand to indicate
this method borrows the Self instance, just as we did in ` rectangle:
&Rectangle`. Methods can take ownership of self, borrow self immutably as we've
done here, or borrow self mutably, just as they can any other parameter.

---

When would we have a method that takes ownership of the instance by using just
self (instead of `&self` or `&mut self`)?

. . .

It is **rare**; this technique is usually used when the method transforms self
into something else and you want to **prevent the caller from using the
original** instance after the transformation.

---

Can you give a method the same name as one of the struct's field?

. . .

Yes. For example, we can define a method on Rectangle also named width:

![-](./images/fe2985afa79435c854a163adf27622d3b16bce92.jpg)
![-](./images/0cc283f73bdea6d53d92775bec186c15fb1180c3.jpg)

---

Does rust implement getter methods to struct fields?

. . .

No. Sometimes, when we give methods with the same name as a field we want it to
only return the value in the field and do nothing else. Rust does not implement
these getters automatically for struct fields as some other languages do.

Getters are useful because you can make the field private but the method public
and thus enable read-only access to that field as part of the type's public API.

---

In C and C++, two different operators are used for calling methods: you use `.`
if you're calling a method on the object directly and `->` if you're calling
the method on a pointer to the object and need to dereference the pointer
first. In other words, if object is a pointer, `object->something()` is similar
to `(*object).something()`.

What about Rust?

. . .

Rust doesn't have an equivalent to the `->` operator.
Instead, Rust has what is called **automatic referencing and dereferencing**.

In other words, the following are the same:
![-](./images/d1621d2f0182dd6e7fc590be2ad225ed7e0742a9.jpg)

Note: \
this automatic referencing behavior works because methods have a clear
receiver—the type of self. Given the receiver and name of a method, Rust can
figure out definitively whether the method is reading (`&self`), mutating
(`&mut self`), or consuming (`self`).

---

What are associated functions?

. . .

All functions defined within an `impl` block are called associated functions
because they're associated with the type named after the `impl`.


![-](./images/a79793912876092f7bb85f561b3a2c6bcdf3304e.jpg)

---

What are associated functions **that aren't methods** and what's a common use
for them?

. . .

We can define associated functions that don't have  `self` as their first
parameter (and thus are not methods) because they don't need an instance of the
type to work with (such as `String::from ` function that's defined on the
`String` type).

Associated functions that aren't methods are often used for **constructors that
will return a new instance of the struct**. These are often called new, but new
isn't a special name and isn't built into the language.

![-](./images/4a38d0944c0123aaa772265b74cfba4da4265a40.jpg)

![-](./images/6538b33875db76db17250f9d359423a0c30844fd.jpg)

---

![-](./images/3eb2d40a6ccfe6415965b124a9503e3ce4c95d54.jpg)

What is the `Self` keywords in the return type?

. . .

The `Self` keywords in the return type and in the body of the function are
**aliases for the type that appears after the `impl` keyword**, which in this
case is `Rectangle`.

---

![-](./images/761d793e114686502d4904ab890a431ff21c5818.jpg)

How do we call this function with size of 3?

. . .

To call this associated function,
**we use the `::` syntax with the struct name**; \
`let sq = Rectangle::square(3);`"

---

What is the `::` syntax used for?

. . .

The `::` syntax is used for both associated functions and namespaces created by
modules.

![-](./images/d4bfcd78d65cf0d04ef28632f757fa231ac51b10.jpg)

```rust
let sq = Rectangle::square(3);
```

![-](./images/20fcbb41129927f8984095de7250f34c6b8c1a5d.jpg)

```rust
io::stdin()
  .read_line(&mut guess)
  .expect("Failed to read line");
```

---

What is the numerical limit on `impl` blocks of structs?

. . .

None.
Each struct is allowed to have multiple `impl` blocks.

For example,
![-](./images/eeec3787728fca5e3fccf241f5c2115edb7c3272.jpg)

is equivalent to:
![-](./images/e35e0808ab4bfc41fbf0967a88f532c0912bc1a5.jpg)

---

What are enums / enumerations?

. . .

Enums allow you to define a type by enumerating its possible variants. In other
words, they give you a way of saying **a value is one of a possible set of
values**.

---

![-](./images/7104eeb548001e2985ea4ec17ab99a4d6544cb7c.jpg)

How do we create instances of these 2 variants?

. . .

With the `::` syntax

![-](./images/12f78713e49fe939ba85671ea3ecc0be96facd1d.jpg)

---

![-](./images/c383e7ef1a3b4e3ef2b2b388262de584e96e5dbc.jpg)

Why is it useful that the variants of the `enum` are namespaced under its
identifier?

. . .

This is useful because now both values `IpAddrKind::V4` and `IpAddrKind::V6`
are of the same type: `IpAddrKind`. We can then, for instance, define a
function that takes any `IpAddrKind`:

![-](./images/592abd8d2a4c4855a9965cdb0bdd5d3f6bf1b46a.jpg)

---

![-](./images/e395de94ee66e05d1c0fbc7810be3fb34e6435f9.jpg)

How do we represent the same concept using JUST an enum?

. . .

Using just an `enum` is more concise: rather than an `enum` inside a struct,
**we can put data directly into each `enum` variant**.

![-](./images/0e76bd8b2469047d53054585f3025fa6f631fc3d.jpg)

This new definition says that both V4 and V6 variants will have associated
String values.

---

![-](./images/0043fd0057ab9f88e739d0fda826788e222ec8c7.jpg)

How do enums with data attached to them work **under the hood**?

. . .

The name of each `enum` variant that we define also **becomes a function** that
**constructs an instance of the enum**.

That is, `IpAddr::V4()` is a function call that takes a String argument and
returns an instance of the `IpAddr` type. We automatically get this constructor
function defined as a `result` of defining the enum.

---

![-](./images/c6800ec99368017fc5e3549eeac49fd83143c5eb.jpg)

What could be a potential advantage to using an `enum` here rather than a
struct?

. . .

Let's say if each variant had **different types and amounts of associated
data**. Enums handle this case with ease.

![-](./images/06183ff7304b001bf1a7fb42c0634d7b9464d8ca.jpg)

In this case: version four type IP addresses will always have four numeric
components that will have values between 0 and 255. If we wanted to store V4
addresses as four u8 values but still express V6 addresses as one String value,
we wouldn't be able to with a struct.

---

![-](./images/2b485e2eb531e6dc16cf0ff4874ea2b0a1d6b730.jpg)

This `enum` has four variants with different types. Explain the syntax used by
Move and Quit here.

---

Move has named fields like a struct does. Quit has no data associated with it
at all.

---

![-](./images/2ffc9311f9bf54e2d2a521b1bc1b9da1ce45cede.jpg)

How would you define these `enum` variants as structs?

. . .

![-](./images/8ce0e64c847586abcd66820b7a00fedd543c66b8.jpg)

---

![-](./images/c97db453601cf595cfd19747188b29145f55ea6e.jpg)

What else can we define on enums?

. . .

**Methods**. Just as we're able to define methods on structs (using impl),
we're also able to define methods on enums.

![-](./images/dccdd7ec26f51e58c97f9b93c3f962cba99a1d67.jpg)

---

![-](./images/635795f7411efb903e71b8a80bbf788f331ea861.jpg)

Rust does not have nulls. What does it have instead?

. . .

The `enum` `Option<T>`.
It's an `enum` that can encode the concept of a value being present or absent.
It is defined by the standard library as follows:

![-](./images/5dd79e5e3af30051b39cf24a63f4592ef33c7475.jpg)

Note: \
the `Option<T>` `enum` is so useful that it's even included in the prelude;
you don't need to bring it into scope explicitly.

---

![-](./images/f727aa971639c1d7318d23f377680f1696566754.jpg)

How can we mark specific struct fields as mutable?

. . .

We can't. The entire instance must be mutable. Rust doesn't allow us to mark
only certain fields as mutable.

Note: \
an alternative workaround could be to use public getters with private
fields while having the rest of the fields be mutable.

---

What is 'match'?

. . .

Rust has an extremely powerful control flow construct called match that allows
you to **compare a value against a series of patterns** and then **execute
code** based on which pattern matches.

Note: \
the power of match comes from the expressiveness of the patterns and the
fact that the compiler confirms that all possible cases are handled.

---

![-](./images/dfc32f154ff54e8a132812623d73352e8bbb8177.jpg)

See if you can restore the blacked out blanks using `match`.

---

First, we list the match keyword followed by an expression.

Next are the match arms.
An arm has two parts:
A pattern and some code, and the `=>` operator
that separates the pattern and the code to run.
Each arm is separated from the next with a comma.

![-](./images/dc661d278007e2187ab038d673726975265ecd1b.jpg)

---

When following an `if`, an expression needs to return a `Boolean` value.
What comes after we use the `match` keyword?

. . .

An expression that can return **any** type.

![-](./images/ac41239e1494a5361cda1baceb8de533c4af08ad.jpg)

The type of coin in this example is the Coin `enum` defined on the first line.

---

![-](./images/787ce16f6f81bc720fb7383d0c68feed2decd04b.jpg)

Why is there no comma here?

. . .

If you want to run multiple lines of code in a match arm, you must use curly
brackets,
and **the comma following the arm is then optional**.
But we don't typically use curly brackets if the match arm code is short.

---

![-](./images/b82472288397d7aa3139e09c5e08b5434c5c3b48.jpg)

How we can extract values out of `enum` variants (UsState in this case)?

. . .

We add a variable (called state, in this case) to the pattern that matches
values of the variant `Coin::Quarter`.

![-](./images/754c42f88111dcc32d4ffd10b2e8977744363a83.jpg)

Then we can use state in the code for that arm.

---

![-](./images/ddf2aaf40f7a4fb9ed20528a07947708213fb9fd.jpg)

What happens here?

. . .

We take special actions for a few particular values, but for all other values
take one default action (using the so called catch-all pattern).

---

What pattern can we use when we want a catch-all but don't want to use the
value in the catch-all pattern?

. . .

_

![-](./images/1ba36a7e84d6038211f5c99f4ac47bf07c74685c.jpg)

_ is a special pattern that matches any value and does not bind to that value.
This tells Rust we aren't going to use the value, so Rust won't warn us about
an unused variable.

---

How can we have one arm of a 'match' **do nothing** if its pattern matches?

. . .

By returning the unit value, `()`.

![-](./images/c42589c6d378d91d6b91b223a9b37d3e10894190.jpg)

Here, we're telling Rust explicitly that we aren't going to use any other value
that doesn't match a pattern in an earlier arm, and we don't want to run any
code in this case.

---

![-](./images/01f1d6ebc8e3dedb98bce68102d4b34fb8fd3778.jpg)

How can we shorten this annoying boilerplate?

. . .

Instead, we could write this in a shorter way using **if let**.

![-](./images/8a7ca6f4c1c993eb22a0283efc6a9ca77ace9b64.jpg)

The syntax if let takes a pattern and an expression separated by an equal sign.
It works the same way as a match, where the expression is given to the match
and the pattern is its first arm.

---

What is the `if let` syntax?

. . .

You can think of if let as syntax sugar for a match that runs code when the
value **matches one pattern and then ignores** all other values.

Note: \
choosing between match and if let depends on whether gaining conciseness
is an appropriate trade-off for losing the exhaustive checking of match.

---

Can we include an else with an if let?

. . .

Yes.

![-](./images/86769deca414868a947a7c717c42276a1e614f7a.jpg)

---

What are the 2 forms of a crate?

. . .

A binary crate or a library crate

Most of the time when Rustaceans say "crate", they mean library crate, and they
use "crate" interchangeably with the general programming concept of a "library".

---

What's a package?

. . .

A package is a bundle of one or more crates that provides a set of
functionality. It also contains a `Cargo.toml` file that describes how to build
those crates.

---

What can a package contain?

. . .

A package can contain as many binary crates as you like, but at most **only one
library crate**. Either way, a package must contain at least one crate, whether
that's a library or binary crate.

---

What is cargo's convention for the crate root file of a BINARY crate with the
same name as the package?

. . .

`src/main.rs`

---

What is cargo's convention for the crate root file of a LIBRARY crate with the
same name as the package?

. . .

`src/lib.rs`

---

What does it mean if if a package contains `src/main.rs` and `src/lib.rs`?

. . .

It means that it has (at least) two crates: a binary and a library, both with
the same name as the package.

---

What's the limit on the number of binary crates a package can have?

. . .

A package can have **multiple** binary crates.

Note: \
this can be done by placing files in the src/bin directory: each file
will be a separate binary crate.

---

What's the purpose of the use keyword?

. . .

To bring a path into scope

---

When compiling a crate, where does the compiler usually start from?

. . .

It starts from the **crate root**.

When compiling a crate, the compiler first looks in the crate root file
(usually `src/lib.rs` for a library crate or `src/main.rs` for a binary crate)
for code to compile.

---

![-](./images/6244d26ab14c185faf27e1fb8a09461972911db8.jpg)

What's the order of look ups (performed by the compiler) when declaring a
module, say, named garden in the root crate?

. . .


- Inline, within curly brackets that replace the semicolon following mod garden
- In the file `src/garden.rs`
- In the file `src/garden/mod.rs`

---

In any file other than the crate root, you can declare submodules.

For example, you might declare mod vegetables; in `src/garden.rs`.
In what order will the compiler look for the submodule's code?

. . .


- Inline, directly following mod vegetables, within curly brackets instead of
the semicolon
- In the file `src/garden/vegetables.rs`
- In the file `src/garden/vegetables/mod.rs`

---

Code within a module is private from its parent modules by default. How do you
make a module public?

. . .

Declare it with **pub** mod instead of mod.

---

How do you make items within a public module public as well?

. . .

Use pub before their declarations.

---

What is the 'use' keyword for?

. . .

Within a scope, the use keyword creates **shortcuts to items** to reduce
repetition of long paths.

In any scope that can refer to
![-](./images/f777a504277ba06c06907e7845fc0fa2a9f351a9.jpg), you can create a
shortcut with ![-](./images/13e907e26c3a98a7d0e3ec2851f9b96c34e60633.jpg); and
from then on you only need to write Asparagus to make use of that type in the
scope.

---

Why are the files `src/main.rs` and `src/lib.rs` called crate roots?

. . .

The reason for their name is that the contents of either of these two files
form a **module named crate** at the root of the crate's module structure,
known as the module tree.

![-](./images/76f2192f3b43745d1a63337929520642d58f76c6.jpg)

---

What are paths for?

. . .

To show Rust where to find an item in a module tree, we use a path in the same
way we use a path when navigating a filesystem. To call a function, we need to
know its path.

---

What are the 2 forms of a path?

. . .

- An absolute path is the full path starting from a crate root; for code from
    an external crate, the absolute path begins with the crate name, and for code
    from the current crate, it starts with the literal crate.
- A relative path starts from the current module and uses self, super, or an
    identifier in the current module.Note: \
    both absolute and relative paths are
    followed by one or more identifiers separated by double colons (`::`).

---

When debating between relative and absolute paths, what is our likely
preference?

. . .

Our preference in general is to **specify absolute paths** because it's more
likely we'll want to move code definitions and item calls independently of each
other.

Generally speaking, choosing whether to use a relative or absolute path is a
decision you'll make based on your project, and depends on whether you're more
likely to move item definition code separately from or together with the code
that uses the item.

---

What is the default access modifier / privacy rule for all items (functions,
methods, structs, enums, modules, and constants)?

. . .

In Rust, all items (functions, methods, structs, enums, modules, and constants)
are private to parent modules by default. If you want to make an item like a
function or struct private, you simply put it in a module.

---

What is the accessABILITY relationship between parent and child modules?

. . .

Items in a parent module can't use the private items inside child modules, but
items in child modules can use the items in their ancestor modules.

Explanation: this is because child modules wrap and hide their implementation
details, but the child modules can see the context in which they're defined. To
continue with our metaphor, think of the privacy rules as being like the back
office of a restaurant: what goes on in there is private to restaurant
customers, but office managers can see and do everything in the restaurant they
operate.

---

What do we have to do in order to hide inner implementation details with
modules?

. . .

Nothing, basically. Rust chose to have the module system function this way so
that **hiding inner implementation details is the default**.

That way, you know which parts of the inner code you can change without
breaking outer code.

---

How do we expose certain inner parts of child modules' code?

. . .

Even though not by default, Rust does give you the option to expose inner parts
of child modules’ code to outer ancestor modules **by using the pub keyword to
make an item public**.

---

![-](./images/db9774e53d44cc31f35caabc41204552966d9543.jpg)

What's going to happen here?

. . .

Compile time error.

![-](./images/ec3f7ff710236723c19e56792dc2f0b8e6df704c.jpg)

Explanation: the pub keyword on a module only lets code in its ancestor modules
refer to it, but the contents of the module are still private; **making the
module public doesn't make its contents public** (Because modules are
containers, there's not much we can do by only making the module public).

---

How do we construct relative paths that **begin in the parent module**, rather
than the current module or the crate root?

. . .

By using **super** at the start of the path (this is like starting a filesystem
path with the .. syntax).

![-](./images/91b052531c63bcde096dfe80e466711633741ed8.jpg)

---

![-](./images/8a53eb0d4556d48c946a13600174affc3750d6b6.jpg)

What is the meaning of super here?

. . .

It allows us to construct **relative paths that begin in the parent module**,
rather than the current module or the crate root (like starting a filesystem
path with the .. syntax).

---

What's the extra few details we want to be aware of around the usage of pub
with structs?

. . .

We use pub before a struct definition, we make the struct public, but **the
struct's fields will still be private**. We can make each field public or not
on a case-by-case basis.

![-](./images/703be36ebcad7ecbc0332d27cce4cdb664fbd0e0.jpg)

---

![-](./images/4e67cf1ce7172506d74bd2758e3565ba23c2a33a.jpg)

If we didn't have 'summer' here, what could have been a consequence?

. . .

Because of the private field, the struct needs to **provide a public associated
function that constructs an instance of Breakfast** (AKA summer).

If Breakfast didn't have such a function, we couldn't create an instance of
Breakfast in eat_at_restaurant because we couldn't set the value of the private
seasonal_fruit field in eat_at_restaurant.

---

![-](./images/79e200e37764d4c343689b3c25aa8688983f17c2.jpg)

What's the default access modifier / privacy rule for `enum` variants?

. . .

Public.

Enums aren't very useful unless their variants are public; it would be annoying
to have to annotate all `enum` variants with pub in every case, so the default
for `enum` variants is to be public.

---

What's the default access modifier / privacy rule for struct fields?

. . .

Private.

Structs are often useful without their fields being public, so struct fields
follow the general rule of everything being private by default unless annotated
with pub.

---

![-](./images/9e87905eb64339a862325b72c53df91b96b16e3b.jpg)

How can we call `add_to_waitlist`?

. . .

Since we've brought the module into the scope,
we only have to **specify `hosting::add_to_waitlist` to call the function**.

![-](./images/73cd14562a08359247b6525de7f28164c4c21315.jpg)

Hosting is now a valid name in that scope, just as though the hosting module
had been defined in the crate root.

---

![-](./images/56033542e7a3a3d8328246e12ac732cb4655941e.jpg)

What happens here?

. . .

Compile time error.

![-](./images/0404faee68b3157294ee3439a85c5aa0fc7bef39.jpg)

Note that use only creates the shortcut for the particular scope in which the
use occurs.

Since the child module named customer is a different scope than the use
statement, the function body won't compile. The error will let it be known that
the shortcut does not apply WITHIN the customer module.

---

![-](./images/56033542e7a3a3d8328246e12ac732cb4655941e.jpg)

How can we fix the scope related compilation error induced here?

. . .

We can move the use within the customer module too, or reference the shortcut
in the parent module with `super::hosting` within the child customer module.

---

![-](./images/df731dabd315ca4be145d1bc87afd40351e1b36d.jpg)

Why did we specify use hosting and then called `hosting::add_to_waitlist` rather
than specifying the use path all the way out to the `add_to_waitlist` function to
achieve the same result?

. . .

This is the idiomatic way to bring a function into scope with use.

The following code, on the other hand,
![-](./images/d9b7e5fd1070a5ba9fc5943b260fbc2ddbc7d831.jpg)
is unclear as to
where `add_to_waitlist` is defined.

Bringing the function's parent module into scope with use means we have to
specify the parent module when calling the function. Specifying the parent
module when calling the function makes it clear that the function isn't locally
defined while still minimizing repetition of the full path.

---

![-](./images/e54eac13fb65ccc136bac8ea30fa8f268fcfc7b5.jpg)

When do we diverge from this idiom of **bringing the function's PARENT module
into scope** (in order to have to specify the parent module when calling the
function)?

. . .

When bringing in structs, enums, and other items with use, it's instead
idiomatic to specify the full path.

![-](./images/68a01cb98c869526ba66dc8b2465014f6e362974.jpg)

There's no strong reason behind this idiom: it's just the convention that has
emerged, and folks have gotten used to reading and writing Rust code this way.

---

![-](./images/e32759e94f2423bb0b701ed9808d1b77c20c308f.jpg)

What's the exception to this idiom of specifying the full path when bringing in
structs, enums, and other items with use?

. . .

The exception to this idiom is if we're bringing two items with the same name
into scope with use statements, because Rust doesn't allow that.

![-](./images/668f918e8dd3f18fd7c29c6f319d75e930c40a37.jpg)

---

![-](./images/06e65533086d333f182a8aa2d2b23eae158220cd.jpg)

What's an alternative solution to bringing two types of the same name into the
same scope?

. . .

By renaming one of the two `Result` types using as.

![-](./images/38b8002947ccbdb1d037d572821f5b64cd8a6947.jpg)

---

![-](./images/cb045b5f63edca58db917948306c10987c00e490.jpg)
![-](./images/c3d4ba7efc6fef71bbcf0ee2794ffe70a9880e24.jpg)

Which of these 2 is considered an idiomatic way of importing two types of the
same name?

. . .

Both. The choice is up to you.

---

How can we RE export a name we brought into scope?

. . .

By combining pub and use.

![-](./images/71d518d15868d6e594483907d6b7463c81bade49.jpg)

When we bring a name into scope with the use keyword, the name available in the
new scope is private. To enable the code that calls our code to refer to that
name as if it had been defined in that code's scope, we can combine pub and use.

---

When is re-exporting names useful?

. . .

Re-exporting is useful when the internal structure of your code is different
from how programmers calling your code would think about the domain.

For example, in a restaurant metaphor, the people running the restaurant think
about "front of house" and "back of house." But customers visiting a restaurant
probably won't think about the parts of the restaurant in those terms. With pub
use, we can write our code with one structure but expose a different structure

---

Is there anything specific we need to do when using the standard library?

. . .

We DO need to **refer to it with use** to bring items from there into our
package's scope, since the standard std library is also a crate that's external
to our package.

On the other hand, we do NOT need to change `Cargo.toml` to include std, since
the standard library is shipped with the Rust language,

![-](./images/29dddc588fd8da312734af3f17f522f688a3741c.jpg)

---

![-](./images/512d8c5567f9b062208d3b882d8dc5a7856e3f5b.jpg)

How can we shorten this?

. . .

With curly brackets.

![-](./images/ba6dc98117d488ecf2ae864e817cf78ebae155c5.jpg)

---

![-](./images/98ff9800aa6fbda25334aa059c1ee8963121330a.jpg)

How can we shorten this?

. . .

By using **self**.

![-](./images/efe434658355aacc51c7a8200fac8844bb59ca52.jpg)

This line brings both `std::io` and `std::io::Write` into scope.

---

How do we bring **all** public items defined in `std::collections` into scope?

. . .

With the glob operator `*`

![-](./images/731ccc43a3f5f931c9c7c28f7aa6644703c1f31f.jpg)

Warning: be careful when using the glob operator! **Glob can drastically reduce
readability** by making it harder to tell what names are in scope and where a
name used in your program was defined.

---

![-](./images/5e9a4151383a2a680ea48214170a3e943ac3db43.jpg)

What is a common use for the glob operator?

. . .

When **testing**, to bring everything under test into the tests module.

---

How often should we load a file using a mod declaration?

. . .

Note that you only need to load a file using a mod declaration **ONCE** in your
module tree.

![-](./images/f73e4c2067d6485b81e848d34ee736207f425968.jpg)

Once the compiler knows the file is part of the project (and knows where in the
module tree the code resides because of where you’ve put the mod statement),
other files in your project should refer to the loaded file's code using a path
to where it was declared.

In other words, mod is not an "include" operation that you may have seen in
other programming languages.

---

For a module named `front_of_house` declared in the crate root,

- `src/front_of_house.rs`
- `src/front_of_house/mod.rs`
which of the paths above is idiomatic for the compiler to look for? \

---

1 is idiomatic, 2 is an older style but is still supported.

The main downside to the style that uses files named `mod.rs` is
that your project can end up with many files named `mod.rs`,
which can get confusing when you have them open in your editor at the same time.

---

For a module named hosting that is a submodule of front_of_house,

- `src/front_of_house/hosting/mod.rs`
- `src/front_of_house/hosting.rs`
    which of the paths above is idiomatic for the compiler to look for?

---

2 is idiomatic, 1 is an older style but still supported.

The main downside to the style that uses files named `mod.rs` is
that your project can end up with many files named `mod.rs`,
which can get confusing when you have them open in your editor at the same time.

---

What's the `Vec<T>` collection type?

. . .

Vectors allow you to store more than one value in a single data structure that
puts all the values next to each other in memory.

Vectors can only store values of the same type.

---

What's an example use for vectors?

. . .

They are useful when you have a list of items, such as the lines of text in a
file or the prices of items in a shopping cart.

---

How do we initialize an empty vector?

. . .

We call the `Vec::new` function.

![-](./images/dfc822f4e22a54e80f0b126f2bd6d916c235dd09.jpg)

---

How do we initialize a vector with pre existing initial values?

. . .

With the vec! macro.

![-](./images/df567e5163e55fe70011b9d3d7a5173a53b65cf5.jpg)

---

How can we add elements to a vector?

. . .

We can use the push method.

![-](./images/2ae5329d62f6ee48536fcc73b1e25be677bd4374.jpg)

---

![-](./images/47a613d90647063b1d71908c1c0f176d82603321.jpg)

What happens here?

. . .

Compile time error!

As with any variable, if we want to be able to change its value, we need to
make it mutable using the mut keyword.

---

What are the two ways to reference a value stored in a vector?

. . .


- Via indexing
- Using the get method
![-](./images/d50711e597b48da47cd5566cffc6af459ad48f22.jpg)

---

![-](./images/1ea35d11529963ddd2dd3c8af8224578e9eb38b3.jpg)

What's the difference between these two ways to reference an element (besides
the syntax)?

. . .

![-](./images/8914a3855924f3e4f45ed30ad923f8745c38dab8.jpg)

When we run this
code, this method will cause the program to panic because it references a
nonexistent element.

![-](./images/844146b9be207b9b3da4ac146a0994414d6db6cd.jpg)

When this method is passed an index that is outside the vector,
it returns `None` without panicking.
Your code will then have logic to handle having either
`Some(&element)` or `None`.

---

![-](./images/8914a3855924f3e4f45ed30ad923f8745c38dab8.jpg)

When would we prefer this way of referencing a vector's element?

. . .

This method is best used when you want your program to crash if there's an
attempt to access an element past the end of the vector.

---

![-](./images/844146b9be207b9b3da4ac146a0994414d6db6cd.jpg)

When would we prefer this way of referencing a vector's element?

. . .

You would use this method if accessing an element beyond the range of the
vector may happen occasionally under normal circumstances.

---

![-](./images/c9212a2d99b29c45759749066c3527d751b02b3c.jpg)

How do we use a for loop to get IMmutable references to each element in a
vector of `i32` values and print them?

. . .

By a for in and an immutable ref.

![-](./images/4587010b8cd64bc435df63a4a48577270db279aa.jpg)

---

![-](./images/6a82a7e263d8b012099790be1c7eaabd1c4d8f26.jpg)

How do we iterate over mutable references to each element in a mutable vector
in order to make changes to all the elements?

. . .

With for in, a mutable ref, and the dereference operator.

![-](./images/254b1038846c98a9bf41f32b7f6d0c9066884964.jpg)

---

![-](./images/9af6c6b6779894b6121d8ef2b0b6d663fe48dcac.jpg)

What is a borrow checker's consequence of the ref to the vector that the for
loop holds?

. . .

The reference to the vector that the for loop holds **prevents simultaneous
modification** **of the WHOLE vector**.

Iterating over a vector, whether immutably or mutably, is safe because of the
borrow checker's rules. If we attempted to insert or remove items in the for
loop body, we would get a compile time error.

---

How do we store 'multiple types' in a sense with vectors?

. . .

Using Enums.

![-](./images/bdddca9bb5383e8c711ba5770a7c66a2ca992bc3.jpg)

Vectors can only store values that are the same type. Fortunately, the variants
of an `enum` are defined under the same `enum` type, so when we need one type
to represent elements of different types, we can define and use an enum!"

---

![-](./images/15c1d58194e25509d332335ba77cfcd123487b4d.jpg)

At what point in time does Rust need to know what types will be in the vector?

. . .

Rust needs to know what types will be in the vector at **compile TIME** so it
knows exactly how much memory on the heap will be needed to store each element.

---

Of the String and string slices (&str) types, which are UTF-8 encoded?

. . .

Both.

---

How is String actually implemented?

. . .

String is actually implemented as a **wrapper around a vector of bytes**,
namely around Vec<u8>** (albeit with some extra guarantees, restrictions, and
capabilities).

---

What do strings have to do with collections?

. . .

Strings are **implemented as a collection of bytes**, plus some methods to
provide useful functionality when those bytes are interpreted as text.

---

How do we create a new string?

. . .

With the new function, just like a vector.

![-](./images/0d114df336d598392ed9f3d90f8859abe122bf07.jpg)

---

What are 2 ways that let us bootstrap a String directly from a literal?

. . .


- With the `to_string()` method
- The `String::from(…)` function
    ![-](./images/e1045ce08aa9ecb5d1029ee7b0a4322a092a2978.jpg)

Note: \
This method is available on any type that implements the `Display` trait.

![-](./images/3ff645a9f145c30a8755516b8ba2ab79808eeb0a.jpg)

---

Convenient way to concatanate strings?

. . .

You can use

- The + operator to concatenate String values
- The format! macro![-](./images/a1c30585947a5029768ef374dbb7b4e82a27b9fe.jpg)
![-](./images/0b889af98baf585f94ad5283450ff4673bb0c4ed.jpg)

---

How can we grow a string?

. . .

By using the push_str() method.

![-](./images/3588daa4ffbf9584505faaa663d1220c60a27ffa.jpg)

---

What does the string concatanation + operator uses under the hood?

. . .

The + operator uses the add method, whose signature looks something like this:

![-](./images/7d37c71496f0aa8d064f883db21ba29dfbe16b9c.jpg)

---

![-](./images/d6afc7830dce2b23ea493a983bbe9071ddaa1451.jpg)
![-](./images/b41d09f919c4d01f105f64e23abfb1e8cce9c647.jpg)
Why does this work
even though the second parameter to add is of &str type and not &String type?

. . .

The reason this works is that **the compiler can coerce** the &String argument
into a &str.

Rust uses a deref coercion, which here turns &s2 into &s2[..]

---

If we need to concatenate multiple strings, the behavior of the + operator gets
unwieldy.

![-](./images/f090b2f25f9ea4ed23eb2e14794734282db18aae.jpg)

With all of the + and " characters, it's difficult to see what's going on. For
more complicated string combining, what could be a better alternative?

. . .

The format! macro

![-](./images/ca7f94f1007a3aad89bb8576e615f4c9ccd7eba2.jpg)

Note: \
the version of the code using format! is much easier to read (compared to
concatanating), and the code generated by the format! macro uses references so
that this call doesn't take ownership of any of its parameters.

---

![-](./images/d632b1abc9f2a2059e33b66716df341e796aff14.jpg)

What happens here?

. . .

Compile time error.

Rust strings don't support indexing.

---

Rust strings don't support access by indices. But why not?

. . .

Since an index into the string's bytes will not always correlate to a valid
Unicode scalar value.
(Since some unicode scalar values (e.g. `©`) take 2 bytes,
others can take 1, etc …).

---

What are the three ways to look at strings from Rust's perspective?

. . .

```rust
let word = "®ßðƒ";
for c in word.chars() {
  println!("{}", c.escape_unicode());
}
```

- A collection of bytes
    ![-](./images/6a209477f09ea06c7876e5d61f9b570e70813620.jpg)
    That's 18 bytes and is how computers ultimately store this data.

- Unicode scalar values
    (Diacritics that don't make sense on their own
    also count as one value in this case)
    ![-](./images/32bd3a5c9ee10a62da7b7b2327be500fdba06151.jpg)

- Grapheme clusters
    ![-](./images/44db11c6d68e0ce38d9e3d06bf1ca792aedc43fa.jpg)

---

How can you create a string slice containing particular bytes out of a string?

. . .

With square brackets and a range.

![-](./images/ab484386580355e0357e9642f7cda4577941742c.jpg)

---

![-](./images/ab484386580355e0357e9642f7cda4577941742c.jpg)

Why is this a bad idea?

. . .

You should use ranges to create string slices with caution, because doing so
**can crash your program**.

If we were to try to slice only part of a character's bytes with something like
&hello[0..1], Rust would panic at runtime in the same way as if an invalid
index were accessed in a vector.

---

![-](./images/ab484386580355e0357e9642f7cda4577941742c.jpg)

What's a better way than risking panic at runtime like this?

. . .

The best way to operate on pieces of strings is to **be explicit about whether
you want characters or bytes**.

- For individual Unicode scalar values, use the chars method.
![-](./images/3c822f74eda9841d62fcf52af09daed05c541f20.jpg)

- Alternatively, the bytes method returns each raw byte, which might be
appropriate for your domain.
![-](./images/895213ff4953d6f4184cc72b9d674d82557a449f.jpg)
Note: \
be sure to
remember that valid Unicode scalar values may be made up of more than 1 byte.

---

When can hash maps be useful?

. . .

Hash maps are useful when you want to look up data not by using an index, as
you can with vectors, but by **using a key that can be of any type**.

For example, in a game, you could keep track of each team's score in a hash map
in which each key is a team's name and the values are each team's score. Given
a team name, you can retrieve its score.

---

How can we initialize a new Hash Map?

. . .

With `Hashmap::new()`

![-](./images/e96b387f163e50f11e948b138826eb93f1a14ca4.jpg)

---

How can we add a new element to a Hash Map?

. . .

With the insert() method

![-](./images/e96b387f163e50f11e948b138826eb93f1a14ca4.jpg)

Note: \
we need to first bring it into scope by using the HashMap from the
collections portion of the standard library. Of our three common collections
(the other two being vectors and strings), this one is the least often used, so
it's not included in the features brought into scope automatically in the
prelude.

---

Where do hash maps store their data?

. . .

Just like vectors, hash maps store their data on the heap.

---

![-](./images/a61649b90b8908d3bfdb51cf710d6229b0746164.jpg)

Explain the copied() method here"

---

The get method returns an `Option<&V>`; if there's no value for that key in the
hash map, get will return None. This program handles the Option by **calling
copied to get an `Option<i32>` rather than an `Option<&i32>`.

---

![-](./images/a61649b90b8908d3bfdb51cf710d6229b0746164.jpg)

Explain the `unwrap_or(…)` method here"

---

The get method returns an `Option<&V>`; if there's no value for that key in the
hash map, get will return None. This program handles the Option by calling
copied to get an `Option<i32>` rather than an `Option<&i32>`, then unwrap_or to
**set score to zero if scores doesn't have an entry** for the key.

---

![-](./images/0c0b1b563a36012aa88c8dd9fd86a96052bf73d3.jpg)

How do we iterate over each key/val pair in this hash map?

. . .

With a for loop on a reference, not unlike we do with vectors.

![-](./images/0266ae49511e6a8e6cb43761e7bd2284e10eb4fe.jpg)

---

![-](./images/4c33d66cd1d730f8efc068980b99ea55af599ae9.jpg)

Which types are copied and which types are moved into the hashmap, making it
the owner of those values?

. . .

For types that implement the `Copy` trait, like `i32`, the values are copied into
the hash map. For owned values like String, the values will be moved and the
hash map will be the owner of those values.

![-](./images/2a2e90b835fcee03447078930bad7e4f3cdc83bc.jpg)

---

In a hash map, how do we return a mutable reference to a particular key but if
the key doesn't exist, insert it first?

. . .

Using the `or_insert(…)` on Entry

![-](./images/fb54b071000a66853fbd9527c04890c058e9ce19.jpg)

The or_insert method on Entry is defined to return a mutable reference to the
value for the corresponding Entry key if that key exists, and if not, inserts
the parameter as the new value for this key and returns a mutable reference to
the new value.

---

![-](./images/2df1590f99083636b429fcf2a30af0fbd2ef21d9.jpg)

Why do we deref here?

. . .

The or_insert method returns a mutable reference (&mut V) to the value for the
specified key. Here we store that mutable reference in the count variable, so
in order to assign to that value, we must first dereference count using the
asterisk (*).

---

What's the default hashing function of HashMap? What's the advantage? What's
the trade off?

. . .


- By default, HashMap uses a hashing function called SipHash that can provide
resistance to Denial of Service (DoS) attacks involving hash tables.
- This is not the fastest hashing algorithm available, but the trade-off for
better security that comes with the drop in performance is worth it.Note: \
if
you profile your code and find that the default hash function is too slow for
your purposes, you can switch to another function by specifying a different
hasher. \

---

What are the 2 kinds of errors?

. . .

Rust groups errors into two major categories: **recoverable and unrecoverable
errors**.

For a recoverable error, such as a file not found error, we most likely just
want to report the problem to the user and retry the operation. Unrecoverable
errors are always symptoms of bugs, like trying to access a location beyond the
end of an array, and so we want to immediately stop the program.

---

What do we have instead of exceptions handling?

. . .

Rust doesn't have exceptions. Instead, it has the type `Result<T, E>` for
recoverable errors and the panic! macro that stops execution when the program
encounters an unrecoverable error.

Most languages don't distinguish between these two kinds of errors and handle
both in the same way, using mechanisms such as exceptions.

---

How do we iterate over characters of a string?

. . .

For individual Unicode scalar values, use the chars() method.

![-](./images/3c822f74eda9841d62fcf52af09daed05c541f20.jpg)

---

What are the two ways to cause a panic in practice?

. . .

By taking an action that causes our code to panic (such as accessing an array
past the end) or by explicitly calling the panic! macro.

![-](./images/f0c2adf30f60bd0bf11c187729c403294d502f50.jpg)

---

By default, when a panic occurs, what happens by default? What's the
alternative?

. . .


- The **program starts unwinding**, which means Rust walks back up the stack
and cleans up the data from each function it encounters.
  However, this walking back and cleanup is a lot of work.
- If in your project you need to make the resulting binary as small as
possible, Rust, therefore, allows you to choose **the alternative of
immediately aborting****, which ends the program without cleaning up.

---

How can you switch to aborting, instead of unwinding, upon a panic?

. . .

By adding **panic = 'abort'** to the appropriate [profile] sections in your
`Cargo.toml` file. For example, if you want to abort on panic in release mode,
add this:

![-](./images/9985df12ec26949c9b5727fd020de47e139eb603.jpg)

---

What are the 2 possible variants of a `Result` type enum?

. . .

`Ok(result)` and `Err(error)`

![-](./images/706dc884545d8659505409eda4c6405a861b656f.jpg)

---

What is the `unwrap_or_else` method?

. . .

A method that can be used on `Result<T, E>` types - and is cleaner to read -
instead of the long match expression.

![-](./images/f82bf8263aae81e6266a06d0c00d6a52d0f1aafd.jpg)

---

What might deter one from using the **match** expression all the time?

. . .

Using match works well enough, but it can be a bit verbose and doesn't always
communicate intent well.

Note: \
the `Result<T, E>` type has many helper methods defined on it to do
various, more specific tasks.

---

What is the **unwrap** method?

. . .

The unwrap method is a shortcut method implemented just like the match
expression.

![-](./images/a4b87f6f88d70b9f68d1fe8748d8656c549e7ae6.jpg)

Explanation: if the `Result` value is the `Ok` variant, unwrap will return the
value inside the `Ok`. If the `Result` is the `Err` variant, unwrap will call the
panic! macro for us.

---

How is the **expect** method different than the **unwrap** method?

. . .

The expect method lets us **choose the panic! error message**. Using expect
instead of unwrap and providing good error messages can convey your intent and
make tracking down the source of a panic easier.

![-](./images/3894f26617c40298b6493919a1c70e868ef0b829.jpg)

---

What is often most preferred in production quality code, unwrap or expect (for
operations that are expected to always succeed)?

. . .

In production-quality code, **most Rustaceans choose expect** rather than
unwrap and give more context about why the operation is expected to always
succeed.

That way, if your assumptions are ever proven wrong, you have more information
to use in debugging.

---

What is the longer way to propagate errors **upwards**?

. . .

By returning a Result<T,E>

![-](./images/6957867d2c6d9e8a4974c227a265f9dac3f34645.jpg)

Explanation: \
This is known as propagating the error and gives more control to
the calling code, where there might be more information or logic that dictates
how the error should be handled than what you have available in the context of
your code.

---

What is the shortcut for propagating errors upward?

. . .

The pattern of propagating errors is so common in Rust that Rust provides **the
question mark operator ?** to make this easier.

![-](./images/df401ef963c1827084e36771bc215ed445d7aef6.jpg)

Explanation: \
The `?` placed after a `Result` value is defined to work in almost the
same way as a match expression. If the value of the `Result` is an `Ok`, the value
inside the `Ok` will get returned from this expression, and the program will
continue. If the value is an Err, the `Err` will be returned from the whole
function as if we had used the return keyword so the error value gets
propagated to the calling code.

---

![-](./images/514b0c9e0ea39d4acd357d5f5e079c36d6c8e217.jpg)

![-](./images/bcfe2766736540014df2dc96e08c00f140c93fd5.jpg)

What can you say about these statements?

. . .

**They are equivalent, except in one specific difference**: error values that
have the `?` operator called on them go through the from function, defined in the
`From` trait in the standard library, which is used to convert values from one
type into another.

This is useful when a function returns one error type to represent all the ways
a function might fail, even if parts might fail for many different reasons.

---

![-](./images/1207d730b3c18687e9acbdfb9d5dc9732670b98d.jpg)

How can we allow the `?` operator to convert between the io:Error type to the
`OurError` type?

. . .

If we define `impl From<io::Error>` for `OurError` to construct an instance of
`OurError` from an `io::Error`, then the `?` operator calls in the body of
`read_username_from_file` will call from and convert the error types without
needing to add any more code to the function.

---

Where can the `?` operator be used?

. . .

The `?` operator can only be used in functions whose
**return type is compatible with the value the `?` is used on**.

This is because the `?` operator is defined to perform an early return of a value
out of the function, in the same manner as a match expression.

---

What are the alternatives to using the `?` operator?

. . .

The other technique is to use a match or one of the `Result<T, E>` methods to
handle the `Result<T, E>` in whatever way is appropriate.

---

How can you do the conversion of a `Result` to an Option or vice versa
(which a `?` operator cannot do)?

. . .

You can use methods like the `ok` method on `Result` or the ok_or method on Option
to do the conversion explicitly.

---

What can `main()` return besides ()?

. . .

Main can also return a `Result<(), E>`

![-](./images/34558a74cc4bce82c5e46530856da4f6247b02bd.jpg)

---

![-](./images/fe8d500d1d1159f8c0cdd9a51edb821b37a86cb4.jpg)

What does `Box<dyn Error>` mean here?

. . .

The `Box<dyn Error>` type is a trait object.
Broadly speaking, it means "any kind of error".
In this case, it allows any `Err` value to be returned early.

---

Which types may the main function return?

. . .

The main function may return any types
that implement the `std::process::Termination` trait,
which contains a function report that returns an `ExitCode`.

---

What is preferred? To panic! or not to panic!?

. . .

**Not to panic**. Returning `Result` is a good default choice when you're
defining a function that might fail, since you give the calling code options,
the choice.

In situations such as examples, prototype code, and tests, it's more
appropriate to write code that panics instead of returning a Result.

---

When prototyping, before you're ready to decide how to handle errors, which
methods can be handy?

. . .

**The unwrap and expect methods** are very handy when prototyping, before
you're ready to decide how to handle errors.

They leave clear markers in your code for when you're ready to make your
program more robust.

---

If you know that whatever operation you're calling still has the possibility of
failing in general,
but it's logically impossible in this particular situation (which the compiler
might not understand),
what could be appropriate?

. . .

It would also be appropriate to **call unwrap or expect in this situation**,
and even better to document the reason you think you'll never have an Err
variant in the expect text.

![-](./images/814a257acfb99d15e0ad96d9d174b524f19e31e9.jpg)

---

When is it ABSOLUTELY advisable to panic!?

. . .

It's advisable to have your code panic **when it's possible that your code
could end up in a bad state**.

In this context, a bad state is when some assumption, guarantee, contract, or
invariant has been broken, such as when invalid values, contradictory values,
or missing values are passed to your code, the bad state is something that is
unexpected and so on …

---

If someone calls your code and passes in values that don't make sense, better
to panic! or return an error?

. . .

It's **best to return an error** if you can so the user of the library can
decide what they want to do in that case.

Warning: in cases where continuing could be insecure or harmful, the best
choice might be to call panic! and alert the person using your library to the
bug in their code so they can fix it during development. Similarly, panic! is
often appropriate if you're calling external code that is out of your control
and it returns an invalid state that you have no way of fixing.

---

![-](./images/72450cfa8efd926a661d61a6d65670a4b684a9bc.jpg)

What would be a better way than having a manual check like this, possibly in
many different occasions (and possibly also performance impacting)?

. . .

Instead, we **can make a new type** and **put the validations in a function to
create an instance of the type** rather than repeating the validations
everywhere.

![-](./images/723504beafc9088d30092a4b4c0dd0889b1406d9.jpg)

That way, it's safe for functions to use the new type in their signatures and
confidently use the values they receive (notice that value is private and only
accessible with the getter and setter).

---

How do we define a function named largest, that is generic over some type T
(and has one parameter named list, which is a slice of values of type T)?

. . .

With angle brackets

![-](./images/5da9d9cccd2344762bf9c0ce3e3514697abcebc7.jpg)

---

How do we define structs to use a generic type parameter?

. . .

With angle brackets

![-](./images/51a323af0cc3e77d1787dd99b24dab8054f96f58.jpg)

---

How do we create a generic enum?

. . .

With angle brackets

![-](./images/81569d8b47804765829cd290215e3f13360baa57.jpg)

---

How do we create a method for a generic enum, using its generic type in the
process?

. . .

By adding the type with angle brackets after `Impl`

![-](./images/34505b49364fc0d0b244d66a90aa5a5bb13769b5.jpg)

---

When defining methods on generic types, what else can we do on these methods?

. . .

We can also specify constraints on generic types when defining methods on the
type.

![-](./images/d8bf4af707d7cd8c71f94736d17775a932fd516e.jpg)

We could, for example, implement methods only on Point<f32> instances rather
than on Point<T> instances with any generic type.

---

Are generic type parameters in a struct definition always the same as those you
might use in that same struct's method signatures?

. . .

No.

![-](./images/95ca9839c9f733b7bfc0055ab81d24e437239e68.jpg)
We show here a
situation in which some generic parameters are declared with `impl` and some are
declared with the method definition. Here, the generic parameters X1 and Y1 are
declared after `impl` because they go with the struct definition. The generic
parameters X2 and Y2 are declared after `fn` mixup, because they're only relevant
to the method.

---

What are the performance costs of using generic type parameters?

. . .

None. Using generic types **won't make your program run any slower than it
would with concrete types**.

![-](./images/5c972678e15013d0f6e241a477707bdf6ffba95c.jpg)

Rust accomplishes this by performing monomorphization of the code using
generics at compile time. The process of monomorphization makes Rust's generics
extremely efficient at runtime. Because Rust compiles generic code into code
that specifies the type in each instance, we pay no runtime cost for using
generics. When the code runs, it performs just as it would if we had duplicated
each definition by hand.

---

How do we create a trait?

. . .

- With the `trait` keyword
- After the method signature, instead of providing an implementation within
curly brackets, **we use a semicolon**.
![-](./images/b4d3f247553220d7ee157de24356963489e6b525.jpg)

---

How do we make it so that a struct fulfills a certain trait?

. . .

**With the `impl` and for keywords**. After `impl`, we put the trait name we want
to implement, then use the for keyword, and then specify the name of the type
we want to implement the trait for.

![-](./images/0c6b6ed6a30c7686a049afd235b65429f4716ccc.jpg)
In this case,
`Summary` is a trait and `NewsArticle` is a struct"

---

What's the difference between using regular (struct / enum / …) methods
and trait methods?

. . .

The only difference is that the user must bring the trait into scope as well as
the types.

![-](./images/87afc02ab72db86add7f1ef89ae0ed62bca48bfe.jpg)
Summary is the
trait in this case, summarize() is a trait method, and Tweet is a struct.

---

What is one restriction regarding traits implementation?

. . .

One restriction to note is that we can implement a trait on a type only if **at
least one of the trait or the type is local to our crate**.

Therefore, we can't implement external traits on external types. For example,
we can't implement the `Display` trait on `Vec<T>` within our aggregator crate,
because `Display` and `Vec<T>` are both defined in the standard library and
aren't local to our aggregator crate.

---

How do we create a default implementation/behavior for some or all of the trait
methods (instead of requiring implementations for all methods on every type)?

. . .

By defining the method instead of only defining the method signature.

![-](./images/3a5e2e6234aeab0baab5c6d034913a103ad8c34b.jpg)

Then, as we implement the trait on a particular type, we can keep or override
each method's default behavior"

---

![-](./images/4041f461f4b3ae5070c5f9ca806790ca17da48b1.jpg)

What happens here?

. . .

**Default implementations** (of a trait method) **can call other methods in the
same trait**, **even if those other methods don't have a default
implementation**. In this way, a trait can provide a lot of useful
functionality and only require implementors to specify a small part of it.

---

What is the less verbose way to define a function named notify, which accepts a
parameter named item, which has the trait Summary?

. . .

With the `impl` keyword

![-](./images/4ea9cd5c959e6494155874fa2607c1a2821b9ea0.jpg)

This is actually syntax sugar for a longer form known as a `trait bound`.
The `impl` Trait syntax is convenient and makes for more concise code in simple
cases, while the fuller trait bound syntax can express more complexity in other
cases.

---

What is the MORE verbose way to define a function named notify, which accepts a
parameter named item, which has the trait `Summary`?

. . .

With **trait bound syntax**. We place trait bounds with the declaration of the
generic type parameter after a colon and inside angle brackets.

![-](./images/52aff4de3a7df276e62b60fbf55b21ee274469a8.jpg)

---

What's the difference between these two?

![-](./images/967e3e6db71696373788a5ac1b4bc93a1a6c3eb6.jpg)

![-](./images/7db94aace6c6c160bb3692ee60d93b9f8b8669cc.jpg)

---

Using `impl` Trait is appropriate if we want this function to allow item1 and
item2 to have different types (as long as both types implement `Summary`)

On the other hand, if we want to force both parameters to have the same type,
however, we must use a trait bound, like this:
![-](./images/492dfccd8307f7cce96e161ad597c95acb230d6e.jpg)

---

How can we specify in the notify definition that item parameter must implement
**both** `Display` and `Summary` traits?

. . .

**With a +**

- `impl` Trait (shorter) syntax:
    ![-](./images/af9d9af38fae172495dcedacd5571f7481ac3884.jpg)
- Trait bound syntax:
    ![-](./images/e3015204fa4bc89b1d4e883400a7031e9eba0860.jpg)"

---

![-](./images/50335c571f93ad0a83e7bc611e60744ad85042dd.jpg)

How to make this less cluttered and more readable?

. . .

With the alternate where syntax

![-](./images/9d07f987145929d21fc2857d0d1f798da8d61330.jpg)

---

How do we, instead of returning a concrete type, create a function's return
type that basically means: "ANY type that fulfills the `Summary` trait"??

. . .

With the `impl` keyword

![-](./images/207d166ba241af5ff8c4e05dc34d6ae9bc8e4802.jpg)

---

![-](./images/3fa05cb54ff9b6b0d874331dd710ffd5fb37334e.jpg)

When can returning Types that implement Traits be useful?

. . .

The ability to specify a return type only by the trait it implements is
especially useful **in the context of closures and iterators**.

Closures and iterators create types that only the compiler knows or types that
are very long to specify. The `impl` Trait syntax lets you concisely specify that
a function returns some type that implements the `Iterator` trait without needing
to write out a very long type.

---

How do we use trait bounds to conditionally implement methods?

. . .

By using a trait bound with an `impl` block that uses generic type parameters (or
in other words by basically specifying the conditions for which the method
implementation could come to fruition),

![-](./images/5878884ebebc32d5024819b454bb40c962c604e2.jpg)

Here, for example, `Pair<T>` only implements the `cmp_display` method
if its inner type `T` implements the `PartialOrd` trait
that enables comparison and the `Display` trait that enables printing.

---

What are **blanket implementations**?

. . .

It's when we **conditionally implement a trait for any type that implements
another trait**. Implementations of a trait on any type that satisfies the
trait bounds are thus called blanket implementations and are extensively used
in the Rust standard library.

![-](./images/02db30714d4cfdb868128389b9bc1f4373505333.jpg)

For example, the standard library implements the `ToString` trait on any type
that implements the `Display` trait.

---

What does it mean that a variable `r` "lives longer" than another variable `x`?

. . .

It means that **its scope is larger**.

![-](./images/179000f34000c7833d5bd756a95dc6121b854453.jpg)

Here the variable `x` doesn't "live long enough".
The reason is that `x` will be
out of scope when the inner scope ends on line 7.
But `r` is still valid for the
outer scope; because its scope is larger, we say that it "lives longer." If
Rust allowed this code to work, `r` would be referencing memory that was
deallocated when `x` went out of scope, and anything we tried to do with `r`
wouldn't work correctly.

---

![-](./images/0370af1d8f6d5c3e02577550ff9bc072d19f2b96.jpg)

How does Rust determine that this code is invalid?

. . .

The Rust compiler has a borrow checker that compares scopes to determine
whether all borrows are valid.

![-](./images/6b8a2bba6a1725ae180893bb6c1516a173326e4b.jpg)

Here, we've annotated the lifetime of `r` with `'a`
and the lifetime of `x` with `'b`.
As you can see, the inner `'b` block is much smaller
than the outer `'a` lifetime block.

---

What's the lifetime annotation syntax?

. . .

Lifetime annotations have a slightly unusual syntax: the names of lifetime
parameters **must start with an apostrophe** (`'`) and are usually all
**lowercase and very short**, like generic types. Most people use the name 'a
for the first lifetime annotation. We place lifetime parameter annotations
after the & of a reference, using a space to separate the annotation from the
reference's type.

![-](./images/655e1c693e5c6bc022f0bd7d39c24f9f2b00e530.jpg)

---

How do we use lifetime annotations in **function signatures**?

. . .

To use lifetime annotations in function signatures, we need to declare the
generic lifetime parameters inside angle brackets between the function name and
the parameter list, just as we did with generic type parameters.

![-](./images/8cf66543fe62b6b76f3c3962ab451836eabe3d20.jpg)

---

![-](./images/fb0b132c22a3be7ce4d0da3ee4635c4d0909fd08.jpg)

When returning a reference from a function, why must the lifetime parameter for
the return type match the lifetime parameter for one of the parameters?

. . .

To prevent a dangling reference.

Since if the reference returned does not refer to one of the parameters, it
must refer to a value created within this function. However, this would be a
dangling reference because the value will go out of scope at the end of the
function.

![-](./images/8fd9191ed3b963105db8075bb918a2d398a1f86c.jpg)

![-](./images/63c92daf98f291de9ab1dd0be287178c437569a6.jpg)

---

What is **lifetimes syntax** really about?

. . .

Ultimately, lifetime syntax is about
<b>connecting the lifetimes of various parameters
and return values of functions</b>.
Once they're connected, Rust has
enough information to allow memory-safe operations and disallow operations that
would create dangling pointers or otherwise violate memory safety.

---

Can we use lifetimes with structs?

. . .

Yes

---

![-](./images/5a6b2c8d5b0d17f8a93392bc455d04d7eb921a13.jpg)

What does this lifetime annotation here mean?

. . .

This annotation means **an instance of ImportantExcerpt can't outlive the
reference it holds in its part field**.

---

What are the patterns programmed into Rust's analysis of references, such that
if your code fits these cases, you don't need to write the lifetimes explicitly?

. . .

These patterns are called the **lifetime elision rules**.

These aren't rules for programmers to follow; they're simply a set of
particular cases that the compiler will consider, and will at times make
writing explicit lifetimes redundant.

---

What are lifetimes on function or method parameters called?

. . .

Input lifetimes

---

What are lifetimes on return values called?

. . .

Output lifetimes

---

How many lifetime parameters does a function with one parameter (and no
explicit lifetime annotations) get? By which of the lifetime elision rules?

. . .

A function with one parameter gets one lifetime parameter.

```rust
fn foo<'a>(x: &'a i32)
```

The rule is that the compiler
**assigns a lifetime parameter to each parameter that's a reference**.

---

How many lifetime parameters does a function with TWO parameters (and no
explicit lifetime annotations) get? a function with THREE, and so on … ? By
which of the lifetime elision rules?

. . .

A function with two parameters gets two separate lifetime parameters, and so
on …

```rust
fn foo<'a, 'b>(x: &'a i32, y: &'b i32)
```

The rule is that the compiler
**assigns a lifetime parameter to each parameter that's a reference**.

---

What happens according to the lifetime elision rules, if there is exactly one
input lifetime parameter?

. . .

That lifetime is assigned to all output lifetime parameters.

```rust
fn foo<'a>(x: &'a i32) -> &'a i32
```

In this case, after applying this and one other lifetime elision rule (the one
regarding input lifetimes), all the references in this function signature have
lifetimes, and the compiler can continue its analysis without needing the
programmer to annotate the lifetimes in this function signature.

---

What happens according to the lifetime elision rules if there are multiple
input lifetime parameters, but one of them is `&self` or `&mut self`?

. . .

This rule only really applies in method signatures. Because this is a method,
**the lifetime of `self` is assigned to all output lifetime parameters**.

This third rule makes methods much nicer to read and write because fewer
symbols are necessary.

---

What's the lifetime of all string LITERALS?

. . .

`'static`

One special lifetime we need to discuss is `'static`, which denotes that the
affected reference can live for the entire duration of the program. All string
literals have the `'static` lifetime.

![-](./images/d017ed059c7cf88c9144c32018a3778389170b92.jpg)

The text of this string is stored directly in the program's binary, which is
always available. Therefore, the lifetime of all string literals is `'static`.

---

What's the catch when you get an error message
that suggests to use the `'static` lifetime?

. . .

Before actually using the `'static` lifetime, think about **whether the reference
you have actually lives the entire lifetime of your program** or not, and
whether you want it to.

Most of the time, an error message suggesting the `'static` lifetime results from
attempting to create a dangling reference or a mismatch of the available
lifetimes. In such cases, the solution is fixing those problems, not specifying
the `'static` lifetime.

---

How do you turn a function into a test?

. . .

With `#[test]`

![-](./images/10c8a7110f8533f766b96d58d83e4f457b94ecd4.jpg)

---

When do tests fail?

. . .

Tests fail when **something in the test function panics**.

Each test is run in a new thread, and when the main thread sees that a test
thread has died, the test is marked as failed.

---

How do you turn a module into a unit test module?

. . .


- Adding the `#[cfg(test)]` annotation right before the module
- Calling the module 'tests'
    ![-](./images/ffa183551e6c0f0bf7c5414c7407f92ddc851b20.jpg)

---

Why do we have to annotate #[test] before every unit test function if we
already annotate the module with #[cfg(test)]?

. . .

We might also have non-test functions in the tests module to help set up common
scenarios or perform common operations, so we always need to indicate which
functions are tests.

---

How do you panic if 2 values are EQUAL / NOT EQUAL?

. . .

With the assert_eq! or assert_ne! macros

![-](./images/f4ba56df4adc0c5e6b15023ec5748960571be608.jpg)

Note: \
They'll also print the two values if the assertion fails, which makes it
easier to see why the test failed (in contrast to using the assert! macro with
==, which only indicates that it got a false value for the == expression,
without printing the values that led to the false value.).

---

How do you panic if an expression is NOT TRUE?

. . .

With the assert! macro

![-](./images/2f58e4a13c5b658a845569d404944935616e65f9.jpg)

---

How do you add a custom message to be printed with the failure message as
optional arguments to the assert!, assert_eq!, and assert_ne! macros?

. . .

Any arguments specified after the required arguments are passed along to the
format! macro, so you can pass a format string that contains {} placeholders
and values to go in those placeholders.

![-](./images/18b77437dbedb69eaccfcd8e8bb2a174d7accbb2.jpg)

Note: \
Custom messages are useful for documenting what an assertion means; when
a test fails, you'll have a better idea of what the problem is with the code.

---

When unit testing, what is important besides checking return values?

. . .

It's important to also check that our code handles error conditions as we
expect.

---

When unit testing, how can we check for Panics?

. . .

We do this by adding the attribute **should_panic** to our test function.

![-](./images/35e0abccedc980aaa5002168a4a7b59aab2cca48.jpg)

The test passes if the code inside the function panics; the test fails if the
code inside the function doesn't panic.

---

Tests that use should_panic can be imprecise. A should_panic test would pass
even if the test panics for a different reason from the one we were expecting.

How can we make should_panic tests more precise?

. . .

We can add an optional expected parameter to the should_panic attribute.

![-](./images/7c7b594ae2632565c9bd2b99dd6d679ec9fab143.jpg)
![-](./images/1d977e8e7984063c9250dcf9d4511188dfc37950.jpg)

**The test harness will make
sure that the failure message contains the provided text**. (!)"

---

What is an alternative to tests that panic when they fail?

. . .

We can also write tests that use `Result<T, E>`

![-](./images/c0866be1e95368f2e7ee607c31bfafbf9fb63096.jpg)

Note: \
Writing tests so they return a `Result<T, E>` enables you to use the
question mark operator in the body of tests, which can be a convenient way to
write tests that should fail if any operation within them returns an Err
variant.

---

How can we use the #[should_panic] annotation on tests that use `Result<T, E>`?

. . .

You can't.

To assert that an operation returns an `Err` variant, **don't** use the question
mark operator on the `Result<T, E>` value. Instead, use assert!(value.is_err()).

---

![-](./images/c0866be1e95368f2e7ee607c31bfafbf9fb63096.jpg)

Do you HAVE to return an error in a test that returns `Result<T, E>`, for the
test to FAIL?

. . .

No. You can still panic! as usual in a test that returns `Result<T, E>`.

---

What's the default behavior of `cargo test`?

. . .

The default behavior of the binary produced by `cargo test` is:

**Run all the tests in parallel
and capture output generated during test runs, preventing the output from being
displayed**, thus making it easier to read the output related to the test
results.

---

How do we differentiate between which custom commandline arguments go into
'**go test**' and which go to
the **resulting binary**?

. . .

To separate these two types of arguments,
you list the arguments that go to `cargo test first`,
followed by the separator `--`
and **then the ones that go to the test binary**.

Running `cargo test --help` displays the options you can use with `cargo test`,
and running `cargo test -- --help` displays the options you can use after the
separator.

---

Do tests run in parallel by default, or consecutively?

. . .

When you run multiple tests, by default they run in parallel using threads,
meaning they finish running faster and you get feedback quicker.

---

What's one caveat to the default behavior of running tests in parallel?

. . .

Because the tests are running at the same time, you must make sure your tests
**don't depend on each other or
on any shared state**, including a shared environment, such as the current
working directory or environment variables.

---

What are 2 ways can we ensure correctness and prevent data races in **tests that create a file** and
write some data to it, for example?

. . .

One solution is to make sure each test writes to a different file; another
solution is to run the tests one at a time.

---

How can we customize the number of threads used in tests (or run them in
sequence, for that matter)?

. . .

With the `--test-threads` flag

![-](./images/a3241b2a981406c65f72726b590bc8746d23b387.jpg)

---

When do we get the standard output of a **function being tested**?

. . .

Only if it **fails**.

By default, if a test passes, Rust's test library captures anything printed to
standard output. If a test fails, we'll see whatever was printed to standard
output with the rest of the failure message.

---

What do we do if we want to see printed values / standard output for successful
tests as well?

. . .

We can tell Rust to also show the output of successful tests
**with the `--show-output` flag**.

![-](./images/5ecd396ab42a26b98e5c109843320f468b1b135c.jpg)

---

How can we run one specific test?

. . .

By passing the name to `cargo test`.

![-](./images/7d06810922410805759362edfaf47262b4ecde01.jpg)
![-](./images/d1bcdd3d57e7fb48d8b735869f7ca6ec3ce8859c.jpg)

---

How can we run a SUBSET of tests?

. . .

We can pass part of a test name to `cargo test`, and ANY test whose name
matches that value (i.e. whose name contains this value as a substring) will be
run.

![-](./images/d85ce67198e0eaff527e8c91e159670a10aecf90.jpg)
![-](./images/bb31bd6a9b8502cb06cdaab498f634f4adffcd20.jpg)

---

How can we run all tests that belong to a certain module?

. . .

Note that the module in which a test appears becomes part of the test's name,
so we can run all the tests in a module by filtering on the module's name.

---

How do we ignore specific (i.e. time-consuming, and so on …) tests and exclude
them during most of the runs of `cargo test`?

. . .

With the #[ignore] annotation!

![-](./images/f8b5bb1b631fc5b1d0213e94fd9da49924c06ced.jpg)

---

How can we run ONLY the ignored tests?

. . .

By using --ignored argument: `cargo test -- --ignored`

![-](./images/0595d98271e9086aba3e78b1b47458eca5a897b3.jpg)
![-](./images/b56bd3dd6c59e74acc5049a8381e2fc6a69b0772.jpg)

---

How can we run ALL tests (fast tests AND ignored tests)?

. . .

With the `--include--ignored argument`:
```sh
cargo test -- --include-ignored
```

![-](./images/eee3b62b6ef0e1b8aa1946b9f4d3dda3e66fdbd3.jpg)

---

Why do we have to add the `#[cfg(test)]` annotation just before a unit testing
module?

. . .

The `#[cfg(test)]` annotation on the tests module **tells Rust to compile and run
the test code only when you run `cargo test`, not when you run `cargo build`.

This saves compile time when you only want to build the library and saves space
in the resulting compiled artifact because the tests are not included.

---

Why do we have to add the `#[cfg(test)]` annotation to INTEGRATION tests outside
of /src?

. . .

We don't. Because they are in a different folder to src, Rust knows to not
compile then unless we run `cargo test`.

Note: \
we still want to add the #[test] annotation right before individual
functions within the (integration) tests folder, to differentiate them from
internal functions that set up data and are not to be tested.

---

What do we have to do in order to create integration tests?

. . .


- We create a tests directory at the top level of our project directory,
    next to src.
    Cargo knows to look for integration test files in this directory.
- We can then make as many test files as we want, and **Cargo will compile each
    of the files as an individual crate**.
    ![-](./images/4b15355116d4479244ed792f99ede8185e41324f.jpg)

---

![-](./images/3824ec880946c81e67a63c86afcb974b9418c567.jpg)

Why do we need to bring our library into each test crate's scope
(in integration tests)?

. . .

Since each file in the tests directory is a separate crate.

![-](./images/3a6b900b86d9769835526941ac5c67f3c63da46f.jpg)

For that reason we add use the lib name at the top of the code,
which we didn't need in the unit tests.

---

How do we run all the tests in a particular integration test file?

. . .

We can use the `--test` argument of `cargo test` followed by the name of the file.

![-](./images/358fd8e7bf439f5112628c239455e5bb813913f5.jpg)
![-](./images/27014d9bc87b618ebac00b7ba46e26517f62c523.jpg)

---

What can we do if we want to create a `common.rs` file to share between
integration test files but we don't want it to be treated as a test of its own
and show up in `cargo test`?

. . .

To avoid having common appear in the test output, instead of creating
`tests/common.rs`, we'll create `tests/common/mod.rs`.

![-](./images/e6e31f3bd51366cc87fc02716646b3c7d1d649ac.jpg)

Naming the file this way tells Rust not to treat the common module as an
integration test file. Files in subdirectories of the tests directory don't get
compiled as separate crates or have sections in the test output.

---

How can we create integration tests for binary crates?

. . .

****We CANNOT create integration tests**** in the tests folder and bring
functions defined in the `src/main.rs` file into scope with a use statement, if
our project is a binary crate only.

Only library crates expose functions that other crates can use; binary crates
are meant to be run on their own. Therefore usually Rust projects that provide
a binary have a straightforward `src/main.rs` file that calls logic that lives
in the `src/lib.rs` file.

---

What's a shortcut to define some custom, non-panic! error handling on a
`Result<T, E>`?

. . .

Using unwrap_or_else()

![-](./images/c862349d8757fa03ad051c58e28200cd6b31f87f.jpg)

If the `Result` is an `Ok` value, this method's behavior is similar to unwrap: it
returns the inner value `Ok` is wrapping. However, if the value is an `Err` value,
this method calls the code in the closure, which is an anonymous function we
define and pass as an argument to unwrap_or_else.

---

How do we print to standard error instead of standard output?

. . .

With the `eprintln!(…)` macro

![-](./images/394a880fd2fb0dd5ef8aee9d0e9a8cc4fbe1d6ab.jpg)

---

Why is sometimes standard output not sufficient?

. . .

Errors.

We want to print errors to standard error instead so that redirecting output >
would not redirect errors as well but rather output only.

---

What's one difference between closures and functions?

. . .

Unlike functions, closures can capture values from the scope in which they're
defined. Functions, on the other hand, are not able to capture their
environment in this way.

---

What is another way to add crates to a project
(without messing with `cargo.toml`)?

. . .

```sh
cargo add package_name
```

---

How to right align text with a width of 12 characters?

. . .

With the format! macro: {:>12}
![-](./images/37b0be411ac071dee7ca0d77988d8ec0aae27722.jpg)

![-](./images/284bb1dd7220a5bfc3cb2240de628c8e209bde45.jpg)

---

How to left align text with a width of 12 characters?

. . .

With the format! macro, using **{:<12}**

![-](./images/284bb1dd7220a5bfc3cb2240de628c8e209bde45.jpg)

---

How to center align text with a width of 12 characters?

. . .

With the format! macro, using {:^12}

![-](./images/284bb1dd7220a5bfc3cb2240de628c8e209bde45.jpg)

---

What type can we call the `unwrap_or_else` method on?

. . .

`Option<T>`

---

Which arguments does the `unwrap_or_else` (defined on `Option<T>`) method
take?

. . .

It takes one argument: a closure without any arguments that returns a value T
(the same type stored in the Some variant of the `Option<T>`)

---

Which parts of the closures syntax are optional? (2 parts)

---


- The parameters / return types (as long as these are inferrable)
- Curly bracket
![-](./images/be14da80c67664157bbde2dbe3bfe836b0a34c0a.jpg)

---

![-](./images/8cf6606bb5dffb27bb3285baffd1af0fd93e02a6.jpg)

What happens here?

. . .

Compile time error.

![-](./images/ed181a664f4499402443a409d84504916bc723f6.jpg)

The first time we call the closure with the String value, the compiler infers
the type of x and the return type of the closure to be String. Those types are
then locked into the closure, and we get a type error when we next try to use a
different type with the same closure.

---

![-](./images/5741c0c7cae52b7246946c0314223c811a33d93e.jpg)

What'd printing the list inbetween those 2 lines do?

. . .

Compile time error.

When the closure is defined, **it captures a mutable reference to list** (even
though at that point in time it hasn't yet been used). Between the closure
definition and the closure call, an immutable borrow to print isn't allowed
because no other borrows are allowed when there's a mutable borrow.

---

What'd you do if you want to force the closure to **take ownership** of the
values it uses in the environment even though the body of the closure doesn't
strictly need ownership?

. . .

You can use the **move** keyword before the parameter list.

![-](./images/edfbeadf1bc9ffa3540d710a8ef529409625c6f9.jpg)

This technique is mostly useful when passing a closure to a new thread to move
the data so that it's owned by the new thread.

---

![-](./images/de15b13b01720316c494158b66d349982c3669b8.jpg)

In this example, even though the closure body still only needs an immutable
reference, we need to specify that list should be moved into the closure by
putting the **move** keyword at the beginning of the closure definition. Why is
that?

. . .

The new thread might finish before the rest of the main thread finishes, or the
main thread might finish first. If the main thread maintained ownership of list
but ended before the new thread did and dropped list, the immutable reference
in the thread would be invalid. Therefore, the compiler requires that list be
moved into the closure given to the new thread so the reference will be valid.

---

What's the `FnOnce` closure trait?

. . .

`FnOnce` applies to closures that can be called once. All closures implement at
least this trait, because all closures can be called. A closure that moves
captured values out of its body will only implement `FnOnce` and none of the
other `Fn` traits, because it can only be called once.

---

What's the `FnMut` closure trait?

. . .

`FnMut` applies to closures that don't move captured values out of their body,
but that might mutate the captured values. These closures can be called more
than once.

---

What's the `Fn` closure trait?

. . .

`Fn` applies to closures that don't move captured values out of their body and
that don't mutate captured values, as well as closures that capture nothing
from their environment. These closures can be called more than once without
mutating their environment, which is important in cases such as calling a
closure multiple times concurrently.

---

What else can implement all three of the `Fn` traits
(that we previously called 'closure traits')?

. . .

Functions can implement these too.

Therefore, if what we want to do doesn't require capturing a value from the
environment, we can use the name of a function rather than a closure where we
need something that implements one of the `Fn` traits.

For example, on an `Option<Vec<T>>` value,
we could call `unwrap_or_else(Vec::new)`
to get a new, empty vector if the value is None.

---

What trait must all iterators implement?

. . .

The `Iterator` trait.

![-](./images/2a898eafb735b26e0ef62ea68fc22c7227693de2.jpg)

---

What are iterator adaptors?

. . .

Iterator adaptors are **methods defined on the `Iterator` trait** that **don't
consume** the iterator. Instead, they produce different iterators by changing
some aspect of the original iterator.

![-](./images/48a8ff38fd4ba94ecd7de7841de1b29abaf58c59.jpg)

For example, the closure here creates a new iterator in which each item from
the vector will be incremented by 1.

---

What are consuming adaptors?

. . .

**Methods that call next on the Iterator** are called consuming adaptors,
because calling them uses up the iterator.

![-](./images/cf7774d4b1d351285550ae734ea4509e8098ba43.jpg)

One example is sum(), which takes ownership of the iterator and iterates the
items (by repeatedly calling next and thus consuming the iterator).

---

Are iterators eager or lazy?

. . .

Iterator adaptors are lazy, and do nothing unless consumed.

---

What's one way to consume an iterator and produce a `vec![…]`?

. . .

With collect()

![-](./images/e85d606695b1ff1e4267cba1c8c153c20f53c8c7.jpg)

---

What is the `filter(…)` iterator adapter?

. . .

The filter iterator adapter is a method that takes a closure.

![-](./images/6771aa44b124345f90447b0a3664f31764a91ae8.jpg)

The closure gets an item from the iterator and returns a bool. If the closure
returns true, the value will be included in the iteration produced by filter.
If the closure returns false, the value won't be included.

---

What are **release profiles**?

. . .

In Rust, release profiles are **predefined and customizable profiles with
different configurations** that allow a programmer to have more control over
various options for compiling code. Each profile is configured independently of
the others.

---

What's the opt-level setting?

. . .

The opt-level setting controls the number of optimizations Rust will apply to
your code, with a range of 0 to 3.

![-](./images/826ca29315c08178cc342d357f073d414e1cf4c7.jpg)

Applying more optimizations extends compiling time, so if you're in development
and compiling your code often, you'll want fewer optimizations to compile
faster even if the resulting code runs slower.

---

What's the deafult opt-level for the dev profile?

. . .

The **default opt-level for dev is therefore 0**.

![-](./images/c73cdf9b48e3332aadee89f924b379a2c81ab773.jpg)

---

What's the deafult opt-level for the release profile?

. . .

When you're ready to release your code, it's best to spend more time compiling.
You'll only compile in release mode once, but you'll run the compiled program
many times,
so release mode trades longer compile time for code that runs faster.
That is why the **default opt-level for the release profile is 3**.

![-](./images/c73cdf9b48e3332aadee89f924b379a2c81ab773.jpg)

---

How do we change the default settings for each of the release profiles?

. . .

For each of the profiles, **by adding `[profile.*]` sections for any profile**
you want to customize,
you override any subset of the default settings.

![-](./images/10a12915c3081857432dc26d68b9855e18fc692c.jpg)

---

How to use doc comments?

. . .

Documentation comments use three slashes, ///, instead of two and support
Markdown notation for formatting the text. Place documentation comments just
before the item they're documenting.

---

What are doc comments for?

. . .

This particular kind of comment, known conveniently as a documentation comment,
will generate HTML documentation. The HTML displays the contents of
documentation comments for public API items intended for programmers interested
in knowing how to use your crate as opposed to how your crate is implemented.

---

How do you write doc tests (5 steps)?

. . .

Right before the function to document:

- Use triple slashes ///
- Give a description of what the function does
- Start a section with the `# Examples` Markdown heading
- Use triple backticks ``` to enclose the doc tests

- Provide code that demonstrates how to use the function. This code serves
double purpose, by both **illustrating to other humans** how to use your code
AND **being verifiable, and thus acting as a live spec of
sorts**![-](./images/323ef95b1564474f841b8b72e0cc06194a78b6e4.jpg)"

---

What can we do with the doc tests we wrote for our code?

. . .

We can generate the HTML documentation from this documentation comment.

---

How can we generate the HTML documentation based on the doc comments we wrote
for the code (and those of our dependencies)?

. . .

By running the command `cargo doc`
(and potentially adding `--open` to open the `result` in a web browser).

This command runs the rustdoc tool distributed with Rust and puts the generated
HTML documentation in the target/doc directory.

---

When documenting a function (with ///), what could be a use for a `# Panics`
Markdown heading?

. . .

It could illustrate the scenarios in which **the function being documented
could panic**. Thus, callers of the function who don't want their programs to
panic should make sure they don't call the function in these situations.

Note: \
Most documentation comments might not necessarily need this section, but
it could be an aspect users will be interested in knowing about.

---

When documenting a function (with ///), what could be a use for a `# Errors`
Markdown heading?

. . .

If the function returns a Result, describing **the kinds of errors that might
occur and what conditions might cause those errors to be returned** can be
helpful to callers so they can write code to handle the different kinds of
errors in different ways.

Note: \
Most documentation comments might not necessarily need this section, but
it could be an aspect users will be interested in knowing about.

---

When documenting a function (with ///), what could be a use for a `# Safety`
Markdown heading?

. . .

If the function is unsafe to call, there should be a section explaining why the
function is unsafe and covering the invariants that the function expects
callers to uphold.

Note: \
Most documentation comments might not necessarily need this section, but
it could be an aspect users will be interested in knowing about.

---

How do we add doc tests to the CRATE itself, rather than to a specific function?

. . .

With //!

The style of doc comment //! adds documentation to the item that CONTAINS the
comments rather than to the items FOLLOWING the comments.

![-](./images/1b5709e4992912f8cfbd4534166add37bbc44c3b.jpg)

We typically use these doc comments **inside the crate root file**
(`src/lib.rs` by convention)
**or inside a module** to document the crate or the module as a whole.

---

What's the potential benefits of using `pub use` to organize the structure of
your public API?

Name 2.

---


- A common use of pub use is to **re-export definitions of a dependency in the
current crate** to make that crate's definitions part of your crate's public
API.
- **If the internal structure of the API isn't relevant or convenient for
others to use** from another library, you don't have to rearrange your internal
organization: instead, you can re-export items to make a public structure
that's different from your private structure by using pub use. Re-exporting
takes a public item in one location and makes it public in another location, as
if it were defined in the other location instead.
![-](./images/83883f8e5831c2d68b8986785565f7e12a5389af.jpg)

---

What does this command mean?

```sh
cargo yank --vers 1.0.1
```

. . .

Yanking a version prevents new projects from depending on that version while
allowing all existing projects that depend on it to continue. Essentially, a
yank means that all projects with a `Cargo.lock` will not break, and any future
`Cargo.lock` files generated will not use the yanked version.

Note:

This can also be undone with `--undo`
to allow projects to start depending on a version again.

---

What's a workspace in Rust?

. . .

It's a feature Cargo offers that can help manage multiple related packages that
are developed in tandem.

Differently worded, workspace is a set of packages that share the same
`Cargo.lock` and output directory.

---

What's the main difference in the `Cargo.toml` of a **workspace** compared to a
"normal" `Cargo.toml`?

Name 2.

---


- [workspace] section
- Members array![-](./images/4aff8fa11d03e38bc60bc72db21be865be3ee2fa.jpg)
![-](./images/f09b1cb38c53be2b751307b2aa11be067d478044.jpg)

The `Cargo.toml` file configures the entire workspace.
This file won't have a [package] section.
Instead, it will start with a [workspace] section
that will allow us to add members to the workspace
by specifying the path to the package with our binary crate.

---

How do we add inter dependencies among packages in the workspace?

. . .

We'll need to add a path dependency and the name of the **dependency package**
(add_one in this case) in the **dependent package**'s `Cargo.toml`.

![-](./images/a9ec0771ed83ce30c870a294a622e9aa4082e91e.jpg)

Cargo doesn't assume that crates in a workspace will depend on each other, so
we need to be explicit about the dependency relationships.

---

How do we run a binary crate from the top of a workspace directory?

. . .

We can specify which package in the workspace we want to run
**by using the `-p` argument and the package name with `cargo run`.

![-](./images/b337f2ec216bf50934b4b2117dadf00dbe5a5f08.jpg)

---

What does the `cargo install` allows one to do?

. . .

The `cargo install` command allows you to install and use binary crates locally
(as tools).

Notes:

- This isn't intended to replace system packages;
    it's meant to be a convenient way for Rust developers
    to install tools that others have shared on [crates.io](https://crates.io).
- You can only install packages that have binary targets.

---

What's a pointer?

. . .

A pointer is a general concept for a variable that contains an address in
memory. This address refers to, or "points at," some other data.

---

What's the most common kind of pointer in Rust?

. . .

The most common kind of pointer in Rust is a reference. References are
indicated by the & symbol and borrow the value they point to.

---

What are smart pointers?

. . .

Smart pointers are data structures that act like a pointer but also have
additional metadata and capabilities.

Note: \
The concept of smart pointers isn't unique to Rust: smart pointers
originated in C++ and exist in other languages as well.

---

What is the benefot of the reference counting smart pointer?

. . .

This pointer enables you to allow data to have multiple owners by keeping track
of the number of owners and, when no owners remain, cleaning up the data.

---

What's an additional difference between references and smart pointers?

. . .

While references only borrow data, in many cases, smart pointers **own** the
data they point to.

(Note: \
This question can be safely removed or suspended, test its usefulness)

---

Why are String and `Vec<T>` considered **smart pointers**?

. . .

Both these types count as smart pointers because

- **They own some memory and allow you to manipulate it**
- They also **have metadata and some extra capabilities or guarantees**
    String, for example, stores its capacity as metadata
    and has the extra ability to ensure its data will always be valid UTF-8.

---

How are smart pointers usually implemented?

. . .

Using structs.

---

What's the difference between ordinary structs and "smart pointers
implementing" structs?

. . .

Unlike an ordinary struct,
smart pointers implement the `Deref` and `Drop` traits.

---

What's the `Deref` trait?

. . .

The `Deref` trait allows an instance of the smart pointer struct to behave like a
reference so you can write your code to work with either references or smart
pointers.

---

What's the `Drop` trait?

. . .

The `Drop` trait allows you to customize the code that's run when an instance of
a smart pointer goes out of scope.

---

What does the `Box<T>` smart pointer allow you?

. . .

Boxes allow you to store data on the heap rather than the stack.

Note: \
What remains on the stack is the pointer to the heap data.

---

What does the `Rc<T>` smart pointer allow us?

. . .

It's a reference counting type that enables multiple ownership

---

What's unique about `RefCell<T>`?

. . .

It's a type that enforces the borrowing rules at **runtime** instead of compile
time

---

What's the performance overhead of using Boxes?

. . .

Boxes don't have performance overhead, other than storing their data on the
heap instead of on the stack. But they don't have many extra capabilities
either.

---

What's the 3 most common use cases for Boxes?

. . .


- When you have a type whose size **can't be known at compile time** and you
    want to use a value of that type in a context that requires an exact size
- When you have a large amount of data and you want to transfer ownership but
    **ensure the data won't be copied** when you do so
- When you want to own a value and you **care only that it's a type that
    implements a particular trait** rather than being of a specific type"

---

How often do you use a box to put a single value on the heap (roughly)?

. . .

Putting a single value on the heap **isn't very useful**,
so you won't use boxes by themselves in this way very often.

---

![-](./images/44fe5b3ba438a16d2cc34708dca4ccd5b17a74ae.jpg)

Why will this not compile?

. . .

This code won't compile because the List type doesn't have a known size (since
it's recursive).

---

![-](./images/44fe5b3ba438a16d2cc34708dca4ccd5b17a74ae.jpg)

How can we fix to make this compile?

. . .

Use a box

![-](./images/7fad74227baaf8ac2df816166ec5176a529d8c97.jpg)

---

What's the **special capabilities** of boxes?

. . .

Boxes provide only the **indirection **and **heap allocation**; **they don't
have any other special capabilities**, like those we'll see with the other
smart pointer types.

Note: \
They also don't have the performance overhead that these special
capabilities incur, so they can be useful in cases where the indirection is the
only feature we need.

---

What does implementing the `Deref` trait allows you to do?

. . .

Implementing the `Deref` trait allows you to **customize the behavior of the
dereference operator** *, and **use the same code that operates on references
with smart pointers** too, since a smart pointer can be treated like a regular
reference.

---

What is `Deref` coercion?

. . .

`Deref` coercion is a feature that allows the compiler to automatically convert a
reference to a type that implements the `Deref` trait into a reference to another
type, for example, &String to &str.

---

How does deref coercion work?

. . .

`Deref` coercion works by **automatically inserting references and dereferences
in function and method calls** when a type that implements the `Deref` trait is
used as an argument. It is a convenience provided by Rust to make code more
concise and easier to read.

---

What are the benefits of using deref coercion?

. . .

The benefits of using deref coercion include **making the code more concise and
easier to read**, and making it possible to write code that can work for both
references and smart pointers, **making it more flexible and reusable**.

---

When does deref coercion happen?

. . .

If you have a `&T`, and `T` implements `Deref` to some type `U`,
you can get a `&U` transparently.
This holds for mutable references as well.

---

When the `Deref` trait is defined,
what is the limit to how many times can `Deref` coersion take place?

. . .

No limit.
When the `Deref` trait is defined for the types involved, Rust will
analyze the types and use `Deref::deref` **as many times as necessary** to get a
reference to match the parameter's type.

Note: \
The number of times that `Deref::deref` needs to be inserted is resolved at
compile time, so there is no runtime penalty for taking advantage of deref
coercion!"

---

How can we benefit from `Deref` but for muteable references?

. . .

Similar to how you use the `Deref` trait
to override the `*` operator on immutable references,
you can use the `DerefMut` trait
to override the `*` operator on mutable references.

---

Can Rust coerce a mutable reference to an immutable one?

. . .

Yes

---

Can Rust coerce an immutable reference to a mutable one?

. . .

No

---

What does the `Drop` trait allows you to do?

. . .

It lets you customize what happens when a value is about to go out of scope.
You can provide an implementation for the `Drop` trait on ANY type, and that code
can be used to release resources like files or network connections.

---

Occasionally, you might want to clean up a value early. How'd you do that?

. . .

Rust doesn't let you call the `Drop` trait's drop method manually; instead you
have to call the `std::mem::drop` function provided by the standard library
if you want to force a value to be dropped before the end of its scope.

---

What does `Rc<T>` do?

. . .

The `Rc<T>` type, which is an abbreviation for reference counting, keeps track of
the number of references to a value to determine whether or not the value is
still in use. If there are zero references to a value, the value can be cleaned
up without any references becoming invalid.

---

When would we use `Rc<T>`?

. . .

We use the `Rc<T>` type when we want to allocate some data on the heap for
multiple parts of our program to read and **we can't determine at compile time
which part will finish using the data last**.

If we knew which part would finish last, we could just make that part the
data's owner, and the normal ownership rules enforced at compile time would
take effect.

---

Can `Rc<T>` be used for multi threading?

. . .

No. `Rc<T>` is only for use in single-threaded scenarios.

---

How do we create a new reference with `Rc<T>`?

. . .

Every time we call `Rc::clone`, the reference count to the data within the
Rc<List> will increase, and the data won't be cleaned up unless there are zero
references to it.

![-](./images/2ec7f12438f17efd031466359e2f71fc9e38ec65.jpg)

---

Is `Rc<T>` in the prelude?

. . .

No.

---

How do we bring `Rc<T>` into scope?

. . .

Use `std::rc::Rc`;

---

Say `a` is of type `Rc<T>`, which is more idiomatic?

- `a.clone()`
- `Rc::clone(&a)`

Why?

---

`Rc::clone(&a)`

By using `Rc::clone` for reference counting, we can visually distinguish between
the deep-copy kinds of clones and the kinds of clones that increase the
reference count.

---

How do we get the STRONG reference count of an `Rc<T>`?

. . .

With `Rc::strong_count(…)`

![-](./images/65af146b11bb310b9d6aec81f5b409021dcac543.jpg)

Note: \
This function is named strong_count rather than count because the `Rc<T>`
type also has a weak_count.

---

How can we borrow data in an `Rc<T>` as mutable?

. . .

We can't.

If `Rc<T>` allowed you to have multiple mutable references too, you might violate
one of the borrowing rules: multiple mutable borrows to the same place can
cause data races and inconsistencies.

---

What is interior mutability in Rust?

. . .

Interior mutability is a design pattern in Rust that allows you to mutate data
even when there are immutable references to that data, using unsafe code inside
a data structure to bend Rust's usual rules that govern mutation and borrowing.
The unsafe code involved is then wrapped in a safe API, and the outer type is
still immutable.

---

What's unique about the `RefCell<T>` smart pointer?

. . .

With references and Box<T>, the borrowing rules’ invariants are enforced at
compile time. With `RefCell<T>`, **these invariants are enforced at runtime**.
With references, if you break these rules, you'll get a compiler error. With
`RefCell<T>`, **if you break these rules, your program will panic and exit**.

---

When is the `RefCell<T>` type useful?

. . .

The `RefCell<T>` type is useful when you're sure your code follows the
borrowing rules but the compiler is unable to understand and guarantee that.

---

Can `RefCell<T>` be used for multi-threaded scenarios?

. . .

No

---

What is the equivalent in Rust to the objects or mock objects of other
languages?

. . .

**Rust doesn't have objects in the same sense** as other languages have
objects, and Rust doesn't have mock object functionality built into the
standard library as some other languages do. **However, you can definitely
create a struct** that will serve the same purposes as a mock object.

---

How do we get an IMmutable reference on a `RefCell<T>`?

. . .

We call borrow on it

![-](./images/aa04718c3886305f63f8fdbc9596d76d35cfe9ff.jpg)
![-](./images/0245fa3088d7b465a9685f7fdc43a36eda41c513.jpg)

---

How do we get a MUTABLE reference on a `RefCell<T>`?

. . .

We call borrow_mut on it

![-](./images/aa04718c3886305f63f8fdbc9596d76d35cfe9ff.jpg)
![-](./images/955610d38a86d3771924453350ab9e3d58a20a83.jpg)

---

How does `RefCell<T>` work?

. . .

With `RefCell<T>`, The borrow method returns the smart pointer type Ref<T>, and
borrow_mut returns the smart pointer type RefMut<T>. The `RefCell<T>` **keeps
track of how many Ref<T> and RefMut<T> smart pointers are currently active**.
`RefCell<T>` lets us have many immutable borrows or one mutable borrow at any
point in time.

---

What's a possible way to get mutability with `Rc<T>`?

. . .

Rc<T> lets you have multiple owners of some data, but it only gives immutable
access to that data. If you have an **Rc<T> that holds a `RefCell<T>`, you
can get a value that can have multiple owners AND that you can mutate!"

---

Are reference cycles / memory leaks possible in Rust?

. . .

Yes.

Creating reference cycles is not easily done, but it's not impossible either.
Creating a reference cycle would be considered a logic bug in your program that
you should use automated tests, code reviews, and other software development
practices to minimize.

---

How can you create a weak reference to the value within an `Rc<T>`?

. . .

By calling `Rc::downgrade` (instead of `Rc::clone`)
and passing a reference to the `Rc<T>`

---

With `Rc<T>` smart pointers, how are weak references different to strong ones?

. . .

Strong references are how you can share ownership of an `Rc<T>` instance. In
contrast, **weak references don't express an ownership relationship**, and
their count doesn't affect when an `Rc<T>` instance is cleaned up

---

How do we do anything with Weak<T> references?

. . .

By calling the **upgrade method** on a Weak<T> instance, which will return an
Option<Rc<T>.

---

What's the type of a weak `Rc<T>` reference?

. . .

Weak<T>

![-](./images/556231b34e0d3368f1921f102343ffe06df5bff4.jpg)

---

What's a good analogy for a program and a process?

. . .

The code is analogous to a cooking recipe, and a process is analogous to the
execution of its actual cooking (including gathering ingredients, measuring
quantities, etc.)

---

What's the name of the independent parts that run simultaneously within a
program?

. . .

(The features that run) **these independent parts are called threads**.

---

Why can splitting a program into threads add complexity?

. . .

Because threads can run simultaneously, there's no inherent guarantee about the
order in which parts of your code on different threads will run.

---

What are the complexities that splitting the computation in your program into
multiple threads to run multiple tasks at the same time add?

. . .


- Race conditions
- Deadlocks
- Hard to reproduce bugs

---

How can we create a new thread?

. . .

We call `thread::spawn` and pass it a closure

![-](./images/c865a45f76c866decefc9abf298030e55744bb8a.jpg)

---

What happens when the main thread of a Rust program completes? (In a
multithreading scenario)

---

All spawned threads are shut down, whether or not they have finished running

---

How do we force a thread to pause its execution for a short duration, allowing
a different thread to run?

. . .

With `thread::sleep `

![-](./images/f359ebfaaa5e74d3d2e8050c83f8f5119f3cd160.jpg)

---

How can we fix the problem of the spawned thread not running or ending
prematurely?

. . .

By saving the return value of `thread::spawn` in a variable, and call the join
method on it, so that it will wait for its thread to finish.

![-](./images/5db117904ebe51c92b18fa947683bfb1719d2bb0.jpg)

---

![-](./images/e617bcdbf60ed6939659ec6aa736935ddfe3f561.jpg)

What happens to the main thread when calling join?

. . .

Calling join on the handle **blocks the thread currently running** until the
thread represented by the handle terminates. Blocking a thread means that
thread is prevented from performing work or exiting.

---

What happens by adding the move keyword before a closure?

. . .

We force the closure to take ownership of the values it's using rather than
allowing Rust to infer that it should borrow the values.

![-](./images/45a54e6a8573af21517639a36f8cf85f8d09337c.jpg)

---

What is one popular alternative to multi thread communication by the sharing of
memory?

. . .

**Message passing**, where threads or actors communicate by sending each other
messages containing data, thereby ensuring safe concurrency.

Here's the idea in a slogan: "Do not communicate by sharing memory; instead,
share memory by communicating.""

---

How is message sending concurrency accomplished?

. . .

To accomplish message-sending concurrency, Rust's standard library provides an
implementation of channels.

---

What's a channel in programming like (analogy)?

. . .

You can imagine a channel in programming as being like a **directional channel
of water**, such as a stream or a river. If you put something like a rubber
duck into a river, it will travel downstream to the end of the waterway.

---

What are the 2 parts of a channel?

---

A channel has two halves: a **transmitter **and a **receiver**.

---

How do we create a new channel (for multithreading)?

. . .

Using the `mpsc::channel()` (multiple producer, single consumer) function

![-](./images/7a2bde52bae73673fddba46b773c78336e3676a4.jpg)

---

What does the `mpsc::channel` function return? (Type & Functionality)

---

The `mpsc::channel` function returns a **tuple**,

- The first element of which is the sending end -- the **transmitter**
- And the second element is the receiving end -- the **receiver**.
    ![-](./images/335998ee15d7fe016d8425e1e66839619b1089d3.jpg)

---

How do we send a message with mpsc?

. . .

With the `send(val)` function

![-](./images/99fb3f85001d2fe3a8ddd69a6365bc494c061afb.jpg)

---

What does using the function `recv()` of an mpsc channel do?

. . .

Using recv, short for receive, will block the main thread's execution and wait
until a value is sent down the channel.

- Either the transmitter closes, and recv will return an error to signal that
no more values will be coming.
- Or a value is sent, in which case recv will return it in a `Result<T, E>`.

---

What does using the function `try_recv()` of an mpsc channel do?

. . .

The `try_recv` method doesn't block,
but will instead return a `Result<T, E>` immediately:

- An `Ok` value holding a message if one is available
- And an `Err` value if there aren't any messages this time.

---

When could using the non blocking `try_recv()`
instead of the blocking `recv()` of an mpsc channel be useful?

. . .

Using `try_recv` is useful **if this thread has other work to do while waiting**
for messages: we could write a loop that calls `try_recv` every so often, handles
a message if one is available, and otherwise does other work for a little while
until checking again.

---

What happens to a variable after sending it with the send() function of an mpsc
channel?

. . .

The **send function takes ownership of its parameter**, and when the value is
moved, the receiver takes ownership of it.

This stops us from accidentally using the value again after sending it; the
ownership system checks that everything is okay.

---

What's a mutex?

. . .

Mutex is an abbreviation for mutual exclusion, as in, a mutex allows only one
thread to access some data at any given time.

---

How do we access data in a mutex?

. . .

To access the data in a mutex, a thread must first signal that it wants access
by asking to **acquire the mutex's lock**.

![-](./images/db85e357bc725af846838f6f338eb384525d5b2c.jpg)

---

What are the 2 rules of using mutexes?

. . .


- You must attempt to **acquire the lock** before using the data.
- When you're done with the data that the mutex guards, you must **unlock **the
data so other threads can acquire the lock.

---

When could attempting to acquire a mutex lock fail?

. . .

The call to lock would fail if **another thread holding the lock panicked**. In
that case, no one would ever be able to get the lock, so can choose to unwrap
or do any myriad of other things we can do on `result` types if we're in that
situation.

---

How do we use a mutex with multiple ownership with multiple threads?

. . .

We don't. At least not on its own. We wrap it with an `Arc<T>` instead
(atomic reference counting)

![-](./images/fd1b934360e2e6da42a057dd764edbdb08bc83c8.jpg)

---

What's the difference between `Arc<T>` and `Rc<T>` in terms of functionality?

. . .

Arc's operations are atomic and thread safe

---

What's the difference between `Arc<T>` and `Rc<T>` in terms of API?

. . .

None. `Arc<T>` and `Rc<T>` have the same API

---

How do we use a mutex with primitive types?

. . .

We don't. Note that if you are doing simple numerical operations, there are
types simpler than `Mutex<T>` **types provided by `std::sync::atomic`.
These types provide safe, concurrent, atomic access to primitive types.

---

Using `Rc<T>` comes with the risk of creating reference cycles, what risk entail
using Mutex<T>?

. . .

Creating deadlocks

---

In what way is `Mutex<T>` similar to `RefCell<T>`?

. . .

Mutex<T> provides interior mutability, as the Cell family does.

---

What does the `Send` marker trait indicates?

. . .

The `Send` marker trait indicates that ownership of values of the type
implementing `Send` can be transferred between threads.

---

What's the benefit of the `Send` marker trait?

. . .

Rust's type system and trait bounds ensure that you can never accidentally send
the value of a type that doesn't implement `Send` across threads unsafely.

---

How does the `Send` or `Sync` marker traits behave when composing new types on top
of `Send` or `Sync` types?

. . .

Any type composed entirely of `Send` types is automatically marked as `Send` as
well.

Similar to `Send`, primitive types are `Sync`,
and types composed entirely of types that are `Sync` are also `Sync`.

---

What does the `Sync` marker trait indicates?

. . .

The `Sync` marker trait indicates
that it is safe for the type implementing `Sync`
to be **referenced** from multiple threads.

In other words, any type `T` is `Sync` if `&T` (an immutable reference to `T`)
is `Send`, meaning the reference can be sent safely to another thread.

---

Is `Rc<T>` `Sync`?

. . .

No. The smart pointer `Rc<T>` is also not `Sync` for the same reasons that it's not
`Send`.

---

Are `RefCell<T>` and other `Cell<T>` types `Sync`?

. . .

No. The `RefCell<T>` type and the family of related `Cell<T>` types are not
`Sync`.

---

Why is RunCell<T> not sync?

. . .

The implementation of borrow checking that `RefCell<T>` does at runtime is not
thread-safe.

---

What's a `Sync` alternative to `RefCell<T>`?

. . .

The smart pointer `Mutex<T>` is `Sync` and can be used to share access with
multiple threads.

---

What does a trait object point to?

. . .

A trait object points to both an instance of a type implementing our specified
trait and a table used to look up trait methods on that type at runtime.

---

How do we create a trait object?

. . .

We create a trait object by

- **specifying some sort of pointer**, such as a & reference or a `Box<T>` smart
pointer, then the dyn keyword,
- And then **specifying the relevant trait**.
![-](./images/eecd28a21b0fcb71c69ff9367477f41acce530ac.jpg)

---

How is defining a trait object different than defining a struct that uses a
generic type parameter with trait bounds?

. . .

A generic type parameter can only be substituted with one concrete type at a
time, whereas trait objects allow for multiple concrete types to fill in for
the trait object at runtime.

---

Between defining a trait object and defining a struct that uses a generic type
parameter with trait bounds, what is preferrable?

. . .

If you'll only ever have homogeneous collections, using generics and trait
bounds is preferable because the definitions will be monomorphized at compile
time to use the concrete types.

---

What's an added functionality of a trait object compared to defining a struct
that uses a generic type parameter with trait bounds?

. . .

Using trait objects, one instance can hold a `Vec<T>` for example that contains
2 elements of **different** types.

![-](./images/69caeb36b29f40a114fb5ff446720e6d3aad1f5d.jpg)
![-](./images/ad88e455cd8a50a080d16a512ec530845dd6dd26.jpg)

---

What's a performance disadvantage to trait objects caused by the lack of
monomorphization?

. . .

Dynamic dispatch.

Namely, Rust uses the pointers inside the trait object to know which method to
call. This lookup incurs a runtime cost that doesn't occur with static dispatch.

---

What's a performance disadvantage to trait objects BESIDES the need for runtime
lookups?

. . .

The fact that dynamic dispatch (which is responsible for the need for said
runtime lookups) also prevents the compiler from choosing to inline a method's
code, which in turn prevents some optimizations.

---

![-](./images/8597727ba1970f1862cfd0f9fa3af2dfb8691b12.jpg)

Note that rather than having `self`, `&self`,
or `&mut self` as the first parameter of the method,
we have `self: Box<Self>`.
What does this syntax with the `Box<Self>` mean?

. . .

This syntax means the method is only valid
when called on a `Box` holding the type.

Note: \
This syntax takes ownership of `Box<Self>`, invalidating the old state.

---

![-](./images/5b8a47bdad920fe086aa8d52f45ac45e68e45bf5.jpg)

In such a case, why might we need to set state to None temporarily (with
`take()`) rather than setting it directly with code like

```rust
self.state = self.state.request_review()?
```

. . .

To get ownership of the state value.
This ensures `Post` can't use the old state value
after we've transformed it into a new state.

---

How do you consume ownership out of an `Option<T>` and invalidate it?

. . .

With `take()`

---

What are the rules on `if let`, `else if`, and `else if let` interoperability?

. . .

**It's also possible to mix and match** `if let`, `else if`,
and `else if let` expressions.

![-](./images/67000e2988db84f8eaf74e5735f800701188eac5.jpg)

Doing so gives us more flexibility than a match expression in which we can
express only one value to compare with the patterns.
Also, Rust doesn't require that the conditions in a series of
`if let`, `else if`, `else if let` arms relate to each other.

---

![-](./images/897aaca0bee5f3305d3d174662935f8c0237e441.jpg)

What happens here?

. . .

That line introduces a new shadowed age variable that contains the value inside
the `Ok` variant.

---

![-](./images/c446f934e3d2f84a414b5cc1f4aecd9769007009.jpg)

What happens here?

. . .

Compile time error.

We can't combine these two conditions like that.
The shadowed age we want to compare to 30 isn't valid until the new scope
starts with the curly bracket.

![-](./images/976d9b530bc4fedbad14173e66fd56341fc5ccd1.jpg)

---

What's the white let pattern?

. . .

Similar in construction to if let, the while let conditional loop allows a
while loop to run for as long as a pattern continues to match.

![-](./images/ee49d51d22a1c3b7120b1895cd647ecbc1953279.jpg)

---

![-](./images/e30dd7515a1fa3d6a630b430be1ff40b9cfb31e0.jpg)

Can we destructure arguments in functions?

. . .

Yes! The `x` part is a pattern!
Just like we can do with let,
we could match a tuple in a function's arguments to the pattern.

![-](./images/494bf31d2de4fb964f74e7374a9963b74f34eab1.jpg)

---

Can we also destructure arguments in closures?

. . .

Yes. We can also use patterns in closure parameter lists in the same way as in
function parameter lists, because closures are similar to functions.

![-](./images/38fc6a02a270d465f2eea3bb0f13244c7c64f0fc.jpg)

---

What are the 2 forms of patterns?

. . .

Patterns come in two forms: refutable and irrefutable.

---

What are irrefutable patterns?

. . .

Patterns that will match for any possible value passed are irrefutable.

An example would be `x` in the statement `let x = 5;`,
because `x` matches anything and therefore cannot fail to match.

---

What are refutable patterns?

. . .

Patterns that can fail to match for some possible value are refutable.

An example would be `Some(x)` in the expression `if let Some(x) = a_value`,
because if the value in the `a_value` variable is `None` rather than `Some`,
the `Some(x)` pattern will not match.

---

Function parameters, let statements, and for loops.

REFUTABLE / IRREFUTABLE patterns?

. . .

Function parameters, let statements, and for loops can only accept
**IRrefutable patterns**, because the program cannot do anything meaningful
when values don't match.

---

`If let` and `while let` expressions

REFUTABLE or IRREFUTABLE patterns?

. . .

The `if let` and while let expressions
**accept both refutable and irrefutable patterns**,
but the compiler warns against irrefutable patterns because by definition
they're intended to handle possible failure:
The functionality of a conditional is in its ability to perform differently
depending on success or failure.

![-](./images/139cbbc25af8d37b44890fb5326478b37f5c0959.jpg)

---

![-](./images/095badb7d46bc9dd0a38da00f422fcb084c61902.jpg)

What happens when you use named variables in match expressions with the same
name as variables in an outer scope like `y` in this scenario?

. . .

Because match starts a new scope, variables declared as part of a pattern
inside the match expression will shadow those with the same name outside the
match construct, as is the case with all variables.

---

How do we match multiple values in a single match arm?

. . .

Using the `|` operator:

![-](./images/302dca88347c7170f4c6d6401675f2f1e603e6f6.jpg)

---

How do we match an inclusive range of values in a single match arm?

. . .

The `..=` syntax allows us to match to an inclusive range of values.

![-](./images/766ee527f62080fb83c06ab3bc61f50bd583d5d0.jpg)

This syntax is more convenient for multiple match values than using the `|`
operator to express the same idea.
If we were to use `|` we would have to specify `1 | 2 | 3 | 4 | 5`.
Specifying a range is much shorter, especially if we want to
match, say, any number between 1 and 1000!"

---

Which types of values are allowed in ranges?

. . .

`Char` and numeric values

![-](./images/b776575c1281313b9d1754c71150bbe82c86dd78.jpg)

---

Why are only numeric or `char` values allowed in ranges?

. . .

The compiler checks that the range isn't empty at compile time, and because the
only types for which Rust can tell if a range is empty or not are char and
numeric values, ranges are only allowed with numeric or char values.

![-](./images/4d3c38aa947e990e6456a5200b8eb8d628ca6d33.jpg)

---

![-](./images/a9ea6bd4d1e31ff889a28b26eb1d71919083d4a1.jpg)

How can we make this shorter?

. . .

![-](./images/0ffc0232289f4dd71e46c766d417fb02cceef873.jpg)

---

How do we test some of the fields (of a struct) for particular values while
creating variables to destructure the other fields in a match?

. . .

With literal values for the fields we want to test as part of the struct
pattern rather than creating variables for all the fields.

![-](./images/154884d778ff82a03b96f8c5804ab199cec31d0e.jpg)

---

Can we match structs or enums more than 1 level deep (nested)?

. . .

Ya, matching can work on nested items too.

![-](./images/f24df243bf52f132db0bb93468209487c245c1a2.jpg)

---

![-](./images/3074c5180a04351c7492e60831499d8d92bf8615.jpg)

Can we destructure this expression into 4 different variables?

. . .

Yes. We can mix, match, and nest destructuring patterns in complex ways. The
example shows a complicated destructure where we nest structs and tuples inside
a tuple and destructure all the primitive values out.

![-](./images/f1367c26d029181f044bcf4a6afb1206614cf7e4.jpg)

---

How flexible is `_` for ignoring values in patterns?

. . .

We can use it **more than once** in the same match arm,
and **in nested ways**, for example.

![-](./images/92b68f24f1bd15db9819b872f4fc30d3987a6a42.jpg)
![-](./images/b1e267763a13d0e0fdb48bded9828dd2171ec756.jpg)

---

What is the subtle difference between using only `_` and using a name that starts
with an underscore?

. . .

The syntax `_x` still binds the value to the variable,
whereas `_` doesn't bind at all.

---

What's a way to ignore variables of a struct `en masse`
(other than using `_` individually)?

. . .

With `..`

![-](./images/463e3c74455115071cfc3a62e42248847be712f2.jpg)

---

What's a way to ignore variables of a tuple `en masse`
(other than using `_` individually)?

. . .

With `..`

![-](./images/c3c5206fe0d15ea048f13d44d1725c37051c085b.jpg)

---

What's a match guard?

. . .

A match guard is an additional if condition, specified after the pattern in a
match arm, that must also match for that arm to be chosen.

![-](./images/cb32f21809df42334cdf15b019c30c0cb41167e0.jpg)

---

What is a way to match on a pattern that includes a range of values
(like `1..=5`), but also exclude a specific value (3 for example)
within that range in Rust?

. . .

With a match guard.

![-](./images/aca28b45bd521b19ef8a7f3d0fe747c530491eef.jpg)

---

What's the downside of the additional expressiveness of match guards?

. . .

The downside of this additional expressiveness is that the compiler doesn't try
to check for exhaustiveness when match guard expressions are involved.

---

![-](./images/979ad3be5b81767f6f967722f9f47b4bc20d9c93.jpg)

How do we create a match expression
that compares the values of the outer `x` and `y`,
rather than introducing a shadowed variable?

. . .

With a match guard.

![-](./images/c5ac9e63537029feba87c2db71bfb40899029790.jpg)

---

What happens when you use the or operator `|` in a match guard?

. . .

You can use the or operator `|` in a match guard
to **specify multiple patterns**.
The **match guard condition will apply to all the patterns**.

![-](./images/65a5ee64455822245baa68e673827884e6d6b801.jpg)

The important part of this example is that the if y match guard applies to 4,
5, and 6, even though it might look like if y only applies to 6.
The match condition states that the arm only matches
if the value of `x` is equal to 4, 5, or 6 **and** if `y` is true.

---

![-](./images/65a5ee64455822245baa68e673827884e6d6b801.jpg)

Explain this match condition.

---

The match condition states that the arm only matches
if the value of `x` is equal to 4, 5, or 6 **and** if `y` is true.
So in terms of operator precedence,
the if `y` match guard applies to 4, 5, and 6,
even though it might look like if `y` only applies to 6.

---

![-](./images/0b84fa78a46933a1e3586a40b7d621567bbdbb7f.jpg)

What's the operator precedence in this match arm?

. . .

Like so,

![-](./images/34856f7a4fef2068eb4665e4aa0bc6275b72fb9a.jpg)

and NOT like so,

![-](./images/d98f84dfe477744b8a4ca2adb72170172a5ac9ce.jpg)

---

What is the at operator `@` in Rust?

. . .

Using `@` lets us test a value **and** save it in a variable within one pattern
(without it we could test a value but might not have the value to use in the
arm's code).

![-](./images/c189fba35c1007658f3968e891ec5ead6484da43.jpg)

---

What is a useful technique for creating a variable that holds a value while
testing it for a pattern match in Rust?

. . .

With the at operator `@`

![-](./images/3b004f6cea6c5e206f6a599af8273acc48b2725c.jpg)

---

![-](./images/938b441c9e84d87687008b27170d675eef7fef60.jpg)

What's the difference between the first two match arms?

. . .

In **the second arm**, the code associated with the arm
**doesn't have a variable that contains the actual value of the `id` field**.

For example, the `id` field's value could have been 10, 11, or 12, but the code
that goes with that pattern doesn't know which it is.
The pattern code isn't able to use the value from the `id` field,
because we haven't saved the `id` value in a variable.

---

![-](./images/de483116faa77519d08915a07ecea3b0189cf9eb.jpg)

What's the difference between the last 2 match arms?

. . .

In **the second arm**, the code associated with the arm
**doesn't have a variable that contains the actual value** of the `id` field.
Whereas **in the last arm**, where we've specified a variable without a range,
**we do have** the value available to use in the arm's code
in a variable named `id`.
The reason is that we've used the struct field shorthand syntax,
but we haven't applied any test to the value in the `id` field in this arm.

---

How to switch to unsafe Rust?

. . .

Use the `unsafe` keyword and then start a new block
that holds the unsafe code.

---

What can you do with a raw pointer in unsafe Rust?

. . .

Dereference a raw pointer.

---

What can you do in unsafe Rust that relates to functions or methods?

. . .

You can call an unsafe function or method.

---

What can you do in unsafe Rust that relates to variables?

. . .

You can access or modify a **mutable static variable**

---

What can you do in unsafe Rust that relates to traits?

. . .

You can implement an unsafe trait

---

What can you do in unsafe Rust that relates to unions?

. . .

You can access fields of unions

---

What can you do in unsafe Rust that relates to the borrow checker?

. . .

**Nothing**. \
It's important to understand that unsafe doesn't turn off the
borrow checker or disable any other of Rust's safety checks outside of five
features for that matter:
If you use a reference in unsafe code, it will still be checked.
Some degree of safety inside of an unsafe block is thus inevitable.

---

Using [cargo-watch], how would you command chain so that after every code change
it would `check`, then `test`, then `run`?

[cargo-watch]: https://github.com/watchexec/cargo-watch

. . .

Utilizing `-x`, as follows:

```sh
cargo watch -x check -x test -x run
```

---

How do you install [cargo-watch]?

. . .

```sh
cargo install cargo-watch
```

---

In our CI pipeline we would like to fail the linter check
if it emits any warnings.
How'd we go about doing this?

. . .

```sh
cargo clippy -- -D warnings
```

---

What does immutable mean in the context of raw pointers?

. . .

Immutable means that the pointer can't be directly assigned to after being
dereferenced.

---

Let's say I have a type `T`.

What does the type of an immutable raw pointer to it look like?

. . .

`*const T`

---

Let's say I have a type `T`.

What does the type of a mutable raw pointer to it look like?

. . .

`*mut T`

---

When dealing with raw pointers `*const T` or `*mut T`
is `*` the deference operator?
If not, what is it?

. . .

The asterisk isn't the dereference operator.
It's part of the type name.

---

Do raw pointers implement any automatic "clean up"?

. . .

No.
By opting out of having Rust enforce such guarantees,
you can give up guaranteed safety in exchange for greater performance
or the ability to interface with another language
or hardware where Rust's guarantees don't apply.

---

![-](./images/492f03369c1c3af3c19253c7e9c0265d82e0c973.jpg)

How do we reference num with an immutable raw pointer?

. . .

By strictly casting it.

![-](./images/16b105734a95e113567855f9c6d6f3b831b204dd.jpg)

---

![-](./images/492f03369c1c3af3c19253c7e9c0265d82e0c973.jpg)

How do we reference num with a mutable raw pointer?

. . .

By strictly casting it

![-](./images/50281d27c722614f259cc9e22e79d51cc593d417.jpg)

---

![-](./images/53155f4950d962cd2030746c95c0a381022a6cfc.jpg)

What happens here?

. . .

We created a raw pointer (to a specific address in memory)
whose validity we can't be so certain of.
There might be data at that address or there might not,
the compiler might optimize the code so there is no memory access,
or the program might error with a segmentation fault.
Usually, there is no good reason to write code like this, but it is possible.

---

How do you convert an entire function's body into an unsafe block?

. . .

By declaring it 'unsafe'

![-](./images/978ad6d1d506603f7277b8056859e6122f2c56c1.jpg)

---

Does an unsafe block within require declaring a function unsafe?

. . .

No. Just because a function contains unsafe code doesn't mean we need to mark
the entire function as unsafe.
In fact, wrapping unsafe code in a safe function is a common abstraction.

---

How to set up an FFI with C?

. . .

Use the extern keyword followed by "C" and then start a new block that holds
the names and signatures of external functions from C we want to call.

![-](./images/4c90342eb37780a036cb53bc22a19b736d27ee8c.jpg)

---

![-](./images/1f72efa098bba1149a7c96fa88e94700f6291bd9.jpg)

What's the problem here?

. . .

Functions declared within extern blocks are always unsafe to call from Rust
code. The reason is that other languages don't enforce Rust's rules and
guarantees, and Rust can't check them, so responsibility falls on the
programmer to ensure safety.
**Calling `abs()` thus requires either an unsafe function or block**.

![-](./images/5855896845393881fbdd6134cae04d4dddc95536.jpg)

---

How do create an interface that allows other languages to call Rust functions?

. . .


- Instead of creating a whole extern block,
    we add the extern keyword and specify the ABI to use
    just before the `fn` keyword for the relevant function.
- We also need to add a `#[no_mangle]` annotation
    to tell the Rust compiler not to mangle the name of this function.
    ![-](./images/1b623f7c4aa19f400d881e97619f94dbcee5636f.jpg)

---

What are global variables called in Rust?

. . .

**static** variables

![-](./images/97d253e4a45d616b8e08efbcf9df22166cf93bab.jpg)

---

What's the name convention of static variables?

. . .

The names of static variables are in `SCREAMING_SNAKE_CASE` by convention.

---

What's the lifetime of static variables?

. . .

Static variables can only store references with the `'static` lifetime,
which means the Rust compiler can figure out the lifetime and we aren't
required to annotate it explicitly.

---

What's the difference(s) between constants and immutable static variables?

. . .

A subtle difference between constants and immutable static variables is that

- **Values in a static variable have a fixed address in memory**. \
    Using the value will always access the same data.
    Constants, on the other hand, are allowed to duplicate their data
      whenever they're used.
- **static variables can be mutable**. \
    Accessing and modifying mutable static variables is unsafe.

---

Just like clippy, the official Rust formatter is included in the set of default
components installed by rustup.
If missing, how can you bring it back?

. . .

```sh
rustup component add rustfmt
```

---

How can you format your **whole project**?

. . .

```sh
cargo fmt
```

---

In our CI pipeline, how can we add a formatting step that will fail when a
commit contains unformatted code?

. . .

```sh
cargo fmt -- --check
```

---

How can we audit crates for known vulnerabilities as part of our CI pipeline?

. . .

- Install cargo-audit:
    ![-](./images/dbfd9f6d316fcae496a186a2e4c2445c7cd1b9ac.jpg)
- Once installed,
    ![-](./images/e5a084425832701ffea56bdc950e200c522f551d.jpg)"

---

What is an unsafe trait?

. . .

A trait is unsafe when at least one of its methods has some invariant that the
compiler can't verify.
By using unsafe `impl`, we're promising that we'll uphold the invariants
that the compiler can't verify.

---

How do we implement an unsafe trait?

. . .

To implement an unsafe trait in Rust, we can use the `unsafe` keyword.

![-](./images/3354e017865db1f5476138b3272e7569c2ae4b29.jpg)

---

Give one example use case of using an unsafe trait

. . .

An example use case of using an unsafe trait is when
<b>we want to mark a type as `Send` or `Sync`,
but the type contains a non-`Send` or non-`Sync` type</b>,
such as raw pointers.
When the compiler can't automatically implement the `Send` or `Sync`
trait for our type due to this non-`Send` or non-`Sync` type, we need to manually
indicate that our type upholds the guarantees for safe sending or accessing
from multiple threads, and do those checks manually using unsafe code.
