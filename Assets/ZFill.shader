Shader "Custom/ZFill" {
	SubShader {
		Tags { "Queue"="Geometry" }
        Pass {
        	ColorMask 0
        	
            CGPROGRAM
            
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            
            struct v2f {
                float4 pos : SV_POSITION;
            };
            
            v2f vert(appdata_base v)
            {
                v2f o;
                o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
                o.pos.z = 0;
                return o;
            }
            
            fixed4 frag (v2f i) : COLOR
            {
                return fixed4(0, 0, 0, 0);
            }
            ENDCG
        }
	} 
}
