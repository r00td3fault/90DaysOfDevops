# 90DaysOfDevops
🚀 Semana 01

## Git & GitHub - Basics, Branching, Merging, PRs

```bash
# Eliminar último commit pero mantener cambios
git reset --soft HEAD~1

# Eliminar último commit y descartar cambios
git reset --hard HEAD~1

# 1️⃣ Soft Reset (mantiene cambios en staging)
git reset --soft HEAD~1

# 2️⃣ Mixed Reset (mantiene cambios en working directory)
git reset --mixed HEAD~1

# 3️⃣ Hard Reset (elimina todos los cambios)
git reset --hard HEAD~1

# Ver historial y obtener hash del commit
git log --oneline

# Revertir commit específico
git revert <commit-hash>

# Ver historial
git log --oneline -n 5

# Iniciar rebase interactivo (últimos 3 commits)
git rebase -i HEAD~3

# En el editor, cambiar 'pick' por:
# - reword: cambiar mensaje del commit
# - edit: pausar para modificar commit
# - squash: combinar commits
# - drop: eliminar commit

# Visualizar estructura de commits y branches
git log --oneline --graph --all

# Ver historial completo de referencias
git reflog

# Recuperar commit específico
git checkout <commit-hash>
git checkout -b recovery-branch

# Recuperar branch eliminada
git checkout -b <branch-name> <commit-hash>

# Encontrar cuándo se introdujo un bug
git bisect start
git bisect bad HEAD
git bisect good <commit-hash>

# Git automáticamente encuentra el commit problemático

# Ver quién modificó cada línea
git blame <archivo>

# Buscar en todo el historial
git log -S "búsqueda" --oneline

# Estadísticas de contribuciones
git shortlog -sn

## Convenciones de commits

feat: agregar nueva funcionalidad
fix: corregir bug
docs: actualizar documentación
style: cambios de formato
refactor: refactorización de código
test: agregar o modificar tests
chore: tareas de mantenimiento


## Resolver Problemas
# Error: "Your branch is ahead of origin/main by X commits"
git rebase origin/main

# Error: "Merge conflict in file.txt"
# 1. Abrir archivo, resolver marcadores
# 2. git add archivo.txt
# 3. git rebase --continue

# Error: "Detached HEAD state"
git checkout main
git checkout -b new-branch <commit-hash>

# Revertir todo a estado anterior
git reflog
git reset --hard HEAD@{n}

```