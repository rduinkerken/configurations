### Afhankelijkheden
- Chocolatey
- Powershell administrator rechten

### Stappen

1. Start Powershell als administrator
2. Voer commando uit `choco install oh-my-posh`
3. Kopieer output URL

![image](https://github.com/user-attachments/assets/68b953ee-4a62-49c7-8237-8a33751ffb33)


4. Typ commando in Powershell `notepad $PROFILE`
5. Maak profiel aan als nodig

![image](https://github.com/user-attachments/assets/553610f0-868d-40f2-b566-8fd286f11528)

6. Vul het notepad bestand met het volgende
EN pas de bestandspaden aan naar jouw bestandspaden

```jsx
# Nice! - mooiste in volgorde. Haal # weg voor het thema die je wil gebruiken

oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/robbyrussell.omp.json' | Invoke-Expression 
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/zash.omp.json' | Invoke-Expression # heel clean
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/tokyonight_storm.omp.json' | Invoke-Expression # ook heel vet
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/takuya.omp.json' | Invoke-Expression 
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/wopian.omp.json' | Invoke-Expression ook wel clean
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/paradox.omp.json' | Invoke-Expression 
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/quick-term.omp.json' | Invoke-Expression 
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/catppuccin.omp.json' | Invoke-Expression # best nice
# oh-my-posh --init --shell pwsh --config 'C:/Program Files (x86)/oh-my-posh/themes/wholespace.omp.json' | Invoke-Expression # heeft iets maar komt wat vrouwelijk over

Set-Alias neofetch winfetch
Remove-Item Alias:curl
clear
```

7. Sluit nu je notepad en je openstaande Powershell vensters.
8. Start Powershell weer op, als je nu een error ziet staan. Voer dan het onderstaande commando uit
`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass -Force;`

![image](https://github.com/user-attachments/assets/c0042e04-0dd9-4bb1-bd5d-4836021c3e26)


9. Restart Powershell en het werkt! 🎊

---

## Mogelijke problemen
### 💡 Werken de iconen niet?
1. Voer uit in Powershell: `oh-my-posh font install meslo`
2. Ga naar de instellingen van Powershell en selecteer lettertype MesloLGL Nerd Font of een ander geïnstalleerde Nerd Font

Als het goed is heeft dit je probleem verholpen.
