<!DOCTYPE html>
<body>
  <h1>FiapCloudGames</h1>
  <p>API REST para gerenciamento de jogos, usuários, carrinho e biblioteca, desenvolvida em <strong>.NET 8</strong> com MongoDB e autenticação JWT. Integração com Azure Key Vault para segurança de segredos em produção.</p>

  <div class="section">
    <h2>Sumário</h2>
    <ul>
      <li><a href="#visao-geral">Visão Geral</a></li>
      <li><a href="#tecnologias">Tecnologias Utilizadas</a></li>
      <li><a href="#configuracao">Configuração</a></li>
      <li><a href="#execucao">Execução</a></li>
      <li><a href="#testes">Testes</a></li>
      <li><a href="#endpoints">Endpoints Principais</a></li>
      <li><a href="#seguranca">Segurança</a></li>
      <li><a href="#contribuicao">Contribuição</a></li>
      <li><a href="#licenca">Licença</a></li>
    </ul>
  </div>

  <div class="section" id="visao-geral">
    <h2>Visão Geral</h2>
    <ul>
      <li>Gerenciamento de usuários e autenticação</li>
      <li>Gerenciamento de jogos</li>
      <li>Adição/remoção de jogos no carrinho</li>
      <li>Gerenciamento da biblioteca de jogos do usuário</li>
      <li>Segredos protegidos via Azure Key Vault</li>
    </ul>
  </div>

  <div class="section" id="tecnologias">
    <h2>Tecnologias Utilizadas</h2>
    <ul>
      <li>.NET 8</li>
      <li>ASP.NET Core</li>
      <li>MongoDB</li>
      <li>Azure Key Vault</li>
      <li>Serilog (logs)</li>
      <li>Swagger (documentação)</li>
      <li>xUnit, Moq, Coverlet (testes e cobertura)</li>
    </ul>
  </div>

  <div class="section" id="configuracao">
    <h2>Configuração</h2>
    <h3>Desenvolvimento</h3>
    <pre>
{
  "MongoDbSettings": {
    "ConnectionString": "mongodb://localhost:27017",
    "DatabaseName": "FiapCloudGames"
  },
  "Jwt": {
    "DevKey": "sua-chave-jwt-para-dev"
  }
}
    </pre>
    <h3>Produção (Azure)</h3>
    <pre>
{
  "KeyVault": {
    "Url": "https://<seu-keyvault>.vault.azure.net/",
    "DatabaseSecretName": "MongoDbConnectionString",
    "JwtSigningKeyName": "JwtSigningKey",
    "BlobKeyName": "BlobKey"
  },
  "Blob": {
    "Url": "https://<seu-blob>.blob.core.windows.net/keys"
  }
}
    </pre>
  </div>

  <div class="section" id="execucao">
    <h2>Execução</h2>
    <h3>Local</h3>
    <pre>dotnet build
dotnet run --project FiapCloudGames.API</pre>
    <p>Acesse o Swagger em: <a href="http://localhost:5000/swagger" target="_blank">http://localhost:5000/swagger</a></p>
    <h3>Produção (Azure)</h3>
    <ul>
      <li>Configure Key Vault e Blob Storage</li>
      <li>Credenciais via Managed Identity</li>
    </ul>
  </div>

  <div class="section" id="testes">
    <h2>Testes</h2>
    <pre>dotnet test --collect:"XPlat Code Coverage"</pre>
    <p>Relatório de cobertura gerado em <code>TestResults</code>.</p>
  </div>

  <div class="section" id="endpoints">
    <h2>Endpoints Principais</h2>
    <p>Consulte a documentação completa via Swagger.</p>
    <ul>
      <li><code>POST /api/auth/login</code> — Autenticação de usuário</li>
      <li><code>GET /api/games</code> — Listagem de jogos</li>
      <li><code>POST /api/cart/add</code> — Adiciona jogo ao carrinho</li>
      <li><code>POST /api/library/add</code> — Adiciona jogo à biblioteca</li>
    </ul>
  </div>

  <div class="section" id="seguranca">
    <h2>Segurança</h2>
    <ul>
      <li>Autenticação JWT</li>
      <li>Autorização via policies</li>
      <li>Segredos protegidos via Azure Key Vault</li>
    </ul>
  </div>

  <div class="section" id="contribuicao">
    <h2>Contribuição</h2>
    <ol>
      <li>Faça um fork do repositório</li>
      <li>Crie uma branch (<code>git checkout -b feature/nome</code>)</li>
      <li>Commit suas alterações (<code>git commit -am 'feat: ...'</code>)</li>
      <li>Push para o branch (<code>git push origin feature/nome</code>)</li>
      <li>Abra um Pull Request</li>
    </ol>
  </div>

  <div class="section" id="licenca">
    <h2>Licença</h2>
    <p>MIT</p>
  </div>
</body>
</html>
