#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;

out vec3 color;
out vec2 TexCoords;
out vec3 WorldPos;
out vec3 Normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

float time;


void main()
{
    color = position;
    TexCoords = texCoords;
    WorldPos = vec3(model * vec4(position, 1.0f));
    Normal = mat3(model) * normal;

    gl_Position =  projection * view * vec4(WorldPos, 1.0);
}
