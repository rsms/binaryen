(module
  (memory 1)
  (data (i32.const 4) "\10\04\00\00")
  (export "memory" memory)
  (type $FUNCSIG$ffff (func (param f32 f32 f32) (result f32)))
  (import $fmaf "env" "fmaf" (param f32 f32 f32) (result f32))
  (export "fadd32" $fadd32)
  (export "fsub32" $fsub32)
  (export "fmul32" $fmul32)
  (export "fdiv32" $fdiv32)
  (export "fabs32" $fabs32)
  (export "fneg32" $fneg32)
  (export "copysign32" $copysign32)
  (export "sqrt32" $sqrt32)
  (export "ceil32" $ceil32)
  (export "floor32" $floor32)
  (export "trunc32" $trunc32)
  (export "nearest32" $nearest32)
  (export "nearest32_via_rint" $nearest32_via_rint)
  (export "fmin32" $fmin32)
  (export "fmax32" $fmax32)
  (export "fma32" $fma32)
  (func $fadd32 (param $0 f32) (param $1 f32) (result f32)
    (return
      (f32.add
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $fsub32 (param $0 f32) (param $1 f32) (result f32)
    (return
      (f32.sub
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $fmul32 (param $0 f32) (param $1 f32) (result f32)
    (return
      (f32.mul
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $fdiv32 (param $0 f32) (param $1 f32) (result f32)
    (return
      (f32.div
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $fabs32 (param $0 f32) (result f32)
    (return
      (f32.abs
        (get_local $0)
      )
    )
  )
  (func $fneg32 (param $0 f32) (result f32)
    (return
      (f32.neg
        (get_local $0)
      )
    )
  )
  (func $copysign32 (param $0 f32) (param $1 f32) (result f32)
    (return
      (f32.copysign
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $sqrt32 (param $0 f32) (result f32)
    (return
      (f32.sqrt
        (get_local $0)
      )
    )
  )
  (func $ceil32 (param $0 f32) (result f32)
    (return
      (f32.ceil
        (get_local $0)
      )
    )
  )
  (func $floor32 (param $0 f32) (result f32)
    (return
      (f32.floor
        (get_local $0)
      )
    )
  )
  (func $trunc32 (param $0 f32) (result f32)
    (return
      (f32.trunc
        (get_local $0)
      )
    )
  )
  (func $nearest32 (param $0 f32) (result f32)
    (return
      (f32.nearest
        (get_local $0)
      )
    )
  )
  (func $nearest32_via_rint (param $0 f32) (result f32)
    (return
      (f32.nearest
        (get_local $0)
      )
    )
  )
  (func $fmin32 (param $0 f32) (result f32)
    (return
      (f32.min
        (get_local $0)
        (f32.const 0)
      )
    )
  )
  (func $fmax32 (param $0 f32) (result f32)
    (return
      (f32.max
        (get_local $0)
        (f32.const 0)
      )
    )
  )
  (func $fma32 (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
    (return
      (call_import $fmaf
        (get_local $0)
        (get_local $1)
        (get_local $2)
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
