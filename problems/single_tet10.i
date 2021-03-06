[Mesh]
  file = 'single_tet6.msh'
[]

[Kernels]
  [./diffus]
    type = Diffusion
    variable = u
  [../]
  [./force]
    type = UserForcingFunction
    variable = u
    function = ffn
  [../]
[]

[Functions]
  [./ffn]
    type = ParsedFunction
    value = '-6'
  [../]
  [./soln]
    type = ParsedFunction
    value = 'x^2 + y^2 + z^2'
  [../]
[]

[BCs]
  [./all]
    type = FunctionDirichletBC
    function = 'soln'
    boundary = 'boundary'
    variable = u
  [../]
[]

[Variables]
  [./u]
    family = LAGRANGE
    order = SECOND
  [../]
[]

[Executioner]
  solve_type = NEWTON
  type = Steady
[]

[Outputs]
  [./out]
    type = Exodus
  [../]
[]
