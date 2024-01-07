#include "./data/ships/common/particles/construction_base.shader"

Texture2D _noiseTexture;
SamplerState _noiseTexture_SS;

PIX_OUTPUT pix(in VERT_OUTPUT_CONSTRUCTION input) : SV_TARGET
{
	float4 col = _texture.Sample(_texture_SS, input.uv);
	if (col.a <= 0.05)
	{
		discard;
	}

	float progress = input.color.r;

	float2 dir = float2(-input.color.b, -input.color.a);
	float noise = _noiseTexture.Sample(_noiseTexture_SS, input.noiseUV).r;
	float gradient = calculateGradientForMask(dir, progress, noise, input.spriteUV);

	float maskTex = col.a;
	float isolatedEdges = saturate(maskTex - 0.9);
	float mask = saturate(max(maskTex - (1 - gradient), isolatedEdges));
	mask = ceil(mask);
	col.a = mask;

	return col;

}