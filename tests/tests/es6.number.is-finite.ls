{module, test} = QUnit
module \ES6

test 'Number.isFinite' (assert)!->
  {isFinite} = Number
  {create} = Object
  assert.isFunction isFinite
  assert.name isFinite, \isFinite
  assert.arity isFinite, 1
  assert.looksNative isFinite
  assert.nonEnumerable Number, \isFinite
  for [1 0.1 -1 2^16 2^16 - 1 2^31 2^31 - 1 2^32 2^32 - 1 -0]
    assert.ok isFinite(..), "isFinite #{typeof ..} #{..}"
  for [NaN, Infinity, \NaN, \5, no, new Number(NaN), new Number(Infinity), new Number(5), new Number(0.1), void, null, {}, ->, create(null)]
    assert.ok not isFinite(..), "not isFinite #{typeof ..} #{try String(..) catch e => 'Object.create(null)'}"