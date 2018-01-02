# StableMarriage
A solver for the [stable marriage](https://en.wikipedia.org/wiki/Stable_marriage_problem#Algorithm) problem written in Pharo.

## Install
In a fresh Pharo image, execute the following code snippet in a Playground.
```
Metacello new
    baseline: 'StableMarriage';
    repository: 'github://juliendelplanque/StableMarriage/repository';
    load
```

## Example
In the stable marriage problem, you have two list of `n` element: a list of men and a list of women. Each person rank people of the other gender according to its preferences. The stable marriage algorithm find the best matches between men and women according to all rankings.

In this implementation a man or a woman is represented as a `SMContender` object. The `#data` instance variable (and its accessor/mutator) of a `SMContender` allows to wrap the real objects to match.

For `3` men and `3` women with a list of preferences for each contender, the implementation would be the following:

```
"We define men."
m1 := SMContender data: 'John'.
m2 := SMContender data: 'Fred'.
m3 := SMContender data: 'Alexander'.
"We define women."
w1 := SMContender data: 'Elia'.
w2 := SMContender data: 'Mary'.
w3 := SMContender data: 'Judith'.
"Now, let's define men's preferences"
m1 preferences: {w1.w2.w3}.
m2 preferences: {w2.w1.w3}.
m3 preferences: {w3.w2.w1}.
"Same for women"
w1 preferences: {m1.m3.m2}.
w2 preferences: {m3.m1.m2}.
w3 preferences: {m1.m2.m3}.
"Lets find the best set of marriages for those people."
SMSolver new
		men: {m1.m2.m3};
		women: {w1.w2.w3};
		solve.
"a Set(
  a SMMarriage(a SMContender('John'),a SMContender('Elia'))
  a SMMarriage(a SMContender('Fred'), a SMContender('Mary'))
  a SMMarriage(a SMContender('Alexander'),a SMContender('Judith'))
)"
```
