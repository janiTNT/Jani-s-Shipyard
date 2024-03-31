a
[
	&<../../Tutorials/Inserters/T/T1.rules>/Part
	&<../../Tutorials/Inserters/T/T2.rules>/Part
	&<../../Tutorials/Inserters/T/T3.rules>/Part
	&<../../Tutorials/Inserters/T/T3B.rules>/Part
]
d
[
	//External Walls Clone
	{
		Key = "sw"// Ship bucket layer.
		Value // The actual material.
		{
			UniqueBucket = 5
			RenderStage = Low
			IsRoof = false
			DrawWithShipGhost = true
			Inflate = .0001
			HasNormals = true
			AtlasTextureParams
			{
				MipLevels = 7 // Assumes 64x64 min part sprite size.
			}
			Material
			{
				Shader = "./data/ships/common/walls_external_lit.shader"
			}
			DiffuseMaterial
			{
				Shader = "./data/ships/common/walls_external.shader"
			}
			NormalsMaterial
			{
				Shader = "./data/ships/common/walls_external_normals.shader"
			}
		}
	}
	//Roof Clone
	{
		Key = "sr"// Ship bucket layer.
		Value // The actual material.
		{
			UniqueBucket = 10
			RenderStage = Low
			IsRoof = false
			DrawWithShipGhost = true
			Inflate = .0001
			HasNormals = true
			AtlasTextureParams
			{
				MipLevels = 7 // Assumes 64x64 min part sprite size.
			}
			Material
			{
				Shader = "./data/ships/common/roof_colored_lit.shader"
			}
			DiffuseMaterial
			{
				Shader = "./data/ships/common/roof_colored.shader"
			}
			NormalsMaterial
			{
				Shader = "./data/ships/common/normals.shader"
			}
			GhostMaterial
			{
				Shader = "./Data/ships/common/parts_ghost.shader"
			}
		}
	}
]