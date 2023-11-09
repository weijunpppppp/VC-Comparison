(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :smt.case_split 3)
(set-option :smt.arith.solver 2)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun type (T@U) T@T)
(declare-fun U_2_int (T@U) Int)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Type () T@T)
(declare-fun FieldType (T@T) T@T)
(declare-fun boolType () T@T)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun int_2_U (Int) T@U)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun MapType2Type (T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (!  (=> (= (type x) boolType) (= (bool_2_U (U_2_bool x)) x))
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Bool) ) (! (= (type (bool_2_U arg0@@0)) boolType)
 :pattern ( (bool_2_U arg0@@0))
))) (forall ((arg0@@1 Int) ) (! (= (U_2_int (int_2_U arg0@@1)) arg0@@1)
 :pattern ( (int_2_U arg0@@1))
))) (forall ((x@@0 T@U) ) (!  (=> (= (type x@@0) intType) (= (int_2_U (U_2_int x@@0)) x@@0))
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@2 Int) ) (! (= (type (int_2_U arg0@@2)) intType)
 :pattern ( (int_2_U arg0@@2))
))) (forall ((arg0@@3 Real) ) (! (= (U_2_real (real_2_U arg0@@3)) arg0@@3)
 :pattern ( (real_2_U arg0@@3))
))) (forall ((x@@1 T@U) ) (!  (=> (= (type x@@1) realType) (= (real_2_U (U_2_real x@@1)) x@@1))
 :pattern ( (U_2_real x@@1))
))) (forall ((arg0@@4 Real) ) (! (= (type (real_2_U arg0@@4)) realType)
 :pattern ( (real_2_U arg0@@4))
))) (forall ((arg0@@5 T@T) (arg1 T@T) ) (= (Ctor (MapType0Type arg0@@5 arg1)) 3))) (forall ((arg0@@6 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@6 arg1@@0)) arg0@@6)
 :pattern ( (MapType0Type arg0@@6 arg1@@0))
))) (forall ((arg0@@7 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@7 arg1@@1)) arg1@@1)
 :pattern ( (MapType0Type arg0@@7 arg1@@1))
))) (forall ((arg0@@8 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@8))))
(= (type (MapType0Select arg0@@8 arg1@@2)) aVar1))
 :pattern ( (MapType0Select arg0@@8 arg1@@2))
))) (forall ((arg0@@9 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@9 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :pattern ( (MapType0Store arg0@@9 arg1@@3 arg2))
))) (forall ((m T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m))))
 (=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m x0 val) x0) val)))
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))
 :weight 0
)))) (forall ((arg0@@10 T@T) ) (= (Ctor (FieldType arg0@@10)) 4))) (forall ((arg0@@11 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@11)) arg0@@11)
 :pattern ( (FieldType arg0@@11))
))) (forall ((arg0@@12 T@U) (arg1@@4 T@U) ) (! (let ((alpha (FieldTypeInv0 (type arg1@@4))))
(= (type (MapType1Select arg0@@12 arg1@@4)) alpha))
 :pattern ( (MapType1Select arg0@@12 arg1@@4))
))) (= (Ctor MapType1Type) 5)) (forall ((arg0@@13 T@U) (arg1@@5 T@U) (arg2@@0 T@U) ) (! (= (type (MapType1Store arg0@@13 arg1@@5 arg2@@0)) MapType1Type)
 :pattern ( (MapType1Store arg0@@13 arg1@@5 arg2@@0))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((alpha@@0 (FieldTypeInv0 (type x0@@2))))
 (=> (= (type val@@2) alpha@@0) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :weight 0
)))) (= (Ctor refType) 6)) (forall ((arg0@@14 T@T) (arg1@@6 T@T) ) (= (Ctor (MapType2Type arg0@@14 arg1@@6)) 7))) (forall ((arg0@@15 T@T) (arg1@@7 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@15 arg1@@7)) arg0@@15)
 :pattern ( (MapType2Type arg0@@15 arg1@@7))
))) (forall ((arg0@@16 T@T) (arg1@@8 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@16 arg1@@8)) arg1@@8)
 :pattern ( (MapType2Type arg0@@16 arg1@@8))
))) (forall ((arg0@@17 T@U) (arg1@@9 T@U) (arg2@@1 T@U) ) (! (let ((aVar1@@2 (MapType2TypeInv1 (type arg0@@17))))
(= (type (MapType2Select arg0@@17 arg1@@9 arg2@@1)) aVar1@@2))
 :pattern ( (MapType2Select arg0@@17 arg1@@9 arg2@@1))
))) (forall ((arg0@@18 T@U) (arg1@@10 T@U) (arg2@@2 T@U) (arg3 T@U) ) (! (let ((aVar1@@3 (type arg3)))
(let ((aVar0@@0 (type arg1@@10)))
(= (type (MapType2Store arg0@@18 arg1@@10 arg2@@2 arg3)) (MapType2Type aVar0@@0 aVar1@@3))))
 :pattern ( (MapType2Store arg0@@18 arg1@@10 arg2@@2 arg3))
))) (forall ((m@@5 T@U) (x0@@5 T@U) (x1 T@U) (val@@5 T@U) ) (! (let ((aVar1@@4 (MapType2TypeInv1 (type m@@5))))
 (=> (= (type val@@5) aVar1@@4) (= (MapType2Select (MapType2Store m@@5 x0@@5 x1 val@@5) x0@@5 x1) val@@5)))
 :weight 0
))) (and (and (forall ((val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@0 val@@6) y0@@3 y1) (MapType2Select m@@6 y0@@3 y1)))
 :weight 0
)) (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@1 val@@7) y0@@4 y1@@0) (MapType2Select m@@7 y0@@4 y1@@0)))
 :weight 0
))) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@2 val@@8) y0@@5 y1@@1) (MapType2Select m@@8 y0@@5 y1@@1)))
 :weight 0
)))) (forall ((arg0@@19 T@U) (arg1@@11 T@U) (arg2@@3 T@U) (arg3@@0 Bool) ) (! (= (type (|lambda#0| arg0@@19 arg1@@11 arg2@@3 arg3@@0)) (MapType2Type refType boolType))
 :pattern ( (|lambda#0| arg0@@19 arg1@@11 arg2@@3 arg3@@0))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type $f))))
 (=> (and (and (and (and (= (type |l#0|) refType) (= (type |l#1|) (MapType0Type refType MapType1Type))) (= (type |l#2|) (FieldType boolType))) (= (type $o) refType)) (= (type $f) (FieldType alpha@@1))) (= (U_2_bool (MapType2Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (not (= $o |l#0|)) (U_2_bool (MapType1Select (MapType0Select |l#1| $o) |l#2|))) |l#3|))))
 :pattern ( (MapType2Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun $_Frame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (and (and (= (type $_Frame@0) (MapType2Type refType boolType)) (= (type null) refType)) (= (type $Heap) (MapType0Type refType MapType1Type))) (= (type alloc) (FieldType boolType))))
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 6) (let ((anon4_Else_correct  (=> (and (<= 0 |x#0|) (= (ControlFlow 0 4) (- 0 3))) true)))
(let ((anon4_Then_correct  (=> (< |x#0| 0) (=> (and (= |y#0@0| (- 0 |x#0|)) (= (ControlFlow 0 2) (- 0 1))) true))))
(let ((anon0_correct  (=> (= $_Frame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 5) 2) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
