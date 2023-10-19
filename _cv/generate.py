import yaml
from jinja2 import Environment, FileSystemLoader

# Setup for Jinja2
env = Environment(
    loader=FileSystemLoader("./_cv"), trim_blocks=True, lstrip_blocks=True
)
template = env.get_template("template.tex")

# Load data from YAML
with open("./_data/publications.yml", "r") as file:
    publications = yaml.safe_load(file)

# Generate TeX from the template and YAML data
output_tex = template.render(publications=publications)

# Write the output to a file
with open("./_cv/resume.tex", "w") as file:
    file.write(output_tex)
