local function yaml_filetype(path)
  local name = vim.fs.basename(path)

  if name:match("^compose%..+%.ya?ml$") or name:match("^docker%-compose%..+%.ya?ml$") then
    return "yaml.docker-compose"
  end

  return "yaml"
end

vim.filetype.add({
  filename = {
    Dockerfile = "dockerfile",
    Containerfile = "dockerfile",
    ["compose.yaml"] = "yaml.docker-compose",
    ["compose.yml"] = "yaml.docker-compose",
    ["docker-compose.yaml"] = "yaml.docker-compose",
    ["docker-compose.yml"] = "yaml.docker-compose",
  },
  extension = {
    nomad = "hcl.nomad",
    yaml = yaml_filetype,
    yml = yaml_filetype,
  },
  pattern = {
    ["Dockerfile%..*"] = "dockerfile",
    [".*%.Dockerfile"] = "dockerfile",
    ["Containerfile%..*"] = "dockerfile",
    [".*compose%.[^/]+%.yaml$"] = { "yaml.docker-compose", { priority = 10 } },
    [".*compose%.[^/]+%.yml$"] = { "yaml.docker-compose", { priority = 10 } },
    [".*docker%-compose%.[^/]+%.yaml$"] = { "yaml.docker-compose", { priority = 10 } },
    [".*docker%-compose%.[^/]+%.yml$"] = { "yaml.docker-compose", { priority = 10 } },
    [".*%.nomad%.hcl$"] = "hcl.nomad",
    [".*/nomad/.*%.hcl$"] = "hcl.nomad",
    [".*/nomad%-jobs/.*%.hcl$"] = "hcl.nomad",
    [".*%.consul%.hcl$"] = "hcl",
    [".*/consul/.*%.hcl$"] = "hcl",
    [".*/consul%.d/.*%.hcl$"] = "hcl",
    [".*/consul/.*%.json$"] = "json",
    [".*/consul%.d/.*%.json$"] = "json",
  },
})

vim.treesitter.language.register("hcl", { "hcl.nomad", "nomad" })
