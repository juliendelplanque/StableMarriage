tests-computation
testStableMatching2
	| abe bob col dan ed fred gav hal ian jon abi bea cath dee eve fay gay hope ivy jan s matching marriages |
	abe := SMContender new
		data: 'abe';
		yourself.
	bob := SMContender new
		data: 'bob';
		yourself.
	col := SMContender new
		data: 'col';
		yourself.
	dan := SMContender new
		data: 'dan';
		yourself.
	ed := SMContender new
		data: 'ed';
		yourself.
	fred := SMContender new
		data: 'fred';
		yourself.
	gav := SMContender new
		data: 'gav';
		yourself.
	hal := SMContender new
		data: 'hal';
		yourself.
	ian := SMContender new
		data: 'ian';
		yourself.
	jon := SMContender new
		data: 'jon';
		yourself.
	abi := SMContender new
		data: 'abi';
		yourself.
	bea := SMContender new
		data: 'bea';
		yourself.
	cath := SMContender new
		data: 'cath';
		yourself.
	dee := SMContender new
		data: 'dee';
		yourself.
	eve := SMContender new
		data: 'eve';
		yourself.
	fay := SMContender new
		data: 'fay';
		yourself.
	gay := SMContender new
		data: 'gay';
		yourself.
	hope := SMContender new
		data: 'hope';
		yourself.
	ivy := SMContender new
		data: 'ivy';
		yourself.
	jan := SMContender new
		data: 'jan';
		yourself.
    abe
        preferences: {abi.eve.cath.ivy.jan.dee.fay.bea.hope.gay}.
    bob
        preferences: {cath.hope.abi.dee.eve.fay.bea.jan.ivy.gay}.
    col
        preferences: {hope.eve.abi.dee.bea.fay.ivy.gay.cath.jan}.
    dan
        preferences: {ivy.fay.dee.gay.hope.eve.jan.bea.cath.abi}.
    ed
        preferences: {jan.dee.bea.cath.fay.eve.abi.ivy.hope.gay}.
    fred
        preferences: {bea.abi.dee.gay.eve.ivy.cath.jan.hope.fay}.
    gav
        preferences: {gay.eve.ivy.bea.cath.abi.dee.hope.jan.fay}.
    hal
        preferences: {abi.eve.hope.fay.ivy.cath.jan.bea.gay.dee}.
    ian
        preferences: {hope.cath.dee.gay.bea.abi.fay.ivy.jan.eve}.
    jon
        preferences: {abi.fay.jan.gay.eve.bea.dee.cath.ivy.hope}.
    abi
        preferences: {bob.fred.jon.gav.ian.abe.dan.ed.col.hal}.
    bea
        preferences: {bob.abe.col.fred.gav.dan.ian.ed.jon.hal}.
    cath
        preferences: {fred.bob.ed.gav.hal.col.ian.abe.dan.jon}.
    dee
        preferences: {fred.jon.col.abe.ian.hal.gav.dan.bob.ed}.
    eve
        preferences: {jon.hal.fred.dan.abe.gav.col.ed.ian.bob}.
    fay
        preferences: {bob.abe.ed.ian.jon.dan.fred.gav.col.hal}.
    gay
        preferences: {jon.gav.hal.fred.bob.abe.col.ed.dan.ian}.
    hope
        preferences: {gav.jon.bob.abe.ian.dan.hal.ed.col.fred}.
	ivy
		preferences: {ian.col.hal.gav.fred.bob.abe.ed.	jon.dan}.
	jan
		preferences: {ed.hal.gav.abe.bob.jon.col.ian.fred.dan}.
	s := SMSolver new
		men: {abe.bob.col.dan.ed.fred.gav.hal.ian.jon};
		women: {abi.bea.cath.dee.eve.fay.gay.hope.ivy.jan};
		stableMatching;
		yourself.
	matching := s marriages.
	marriages := {
		{ jon . abi }.
		{ fred . bea }.
		{ bob . cath }.
		{ col . dee }.
		{ hal . eve }.
		{ dan . fay }.
		{ gav . gay }.
		{ ian . hope }.
		{ abe . ivy }.
		{ ed . jan } }.
	self assert: (matching allSatisfy: [ :any1 | marriages anySatisfy: [ :any2 | any1 man = any2 first and: [ any1 woman = any2 second ] ] ])